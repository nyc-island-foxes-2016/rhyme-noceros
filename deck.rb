require_relative 'card'
class Deck
  attr_reader :deck, :empty

  def initialize(question_answer_pairs)
    @deck = create_deck(question_answer_pairs)
    @empty = false
  end

  def draw_card #shuffles deck and returns/removes the last card
    @deck.shuffle.pop
  end

  def empty?
    @deck.length == 0
  end

  def create_deck(question_answer_pairs)
    question_answer_pairs.map do |hash|
      Card.new(hash)
    end
  end
end
