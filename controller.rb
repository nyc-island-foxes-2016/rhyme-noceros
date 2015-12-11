require_relative 'view'
require_relative 'deck'
require_relative 'txtable'

require 'pry'

class Controller
  include Txtable

  def initialize
    @view = View.new
    file_path = @view.get_argv.join
    file_pairs = generate_line_pairs_from_txt(file_path)
    @game = Deck.new(convert_file_pairs_to_hashes(file_pairs))
    run_interface
  end

  def run_interface
    input = ""
    @view.display_welcome_message
    current_card = @game.draw_card
    until input == "exit"
      @view.display(current_card.question)
      input = @view.get_input
      binding.pry
      if input == current_card.answer
        @view.display("Correct!")
        current_card = @game.draw_card
      else
        @view.display("Try again.")
      end
    end
    @view.display("Bye!")
  end

  def convert_file_pairs_to_hashes(file_pairs)
    file_pairs.map do |pair|
      [:question, :answer].zip(pair).to_h
    end
  end

end
