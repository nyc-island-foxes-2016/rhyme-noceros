class View
  def display(output)
    puts output
  end

  def get_input
    gets.chomp
  end

  def display_welcome_message
    display("Welcome to Hiphop-opotamus Flashcards!\n    When done playing, type \"exit\" to quit the game.")
  end
end
