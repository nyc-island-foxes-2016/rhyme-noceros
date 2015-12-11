class Card

  def initialize(args = {})
    @question = args.fetch(:question, "")
    @answer = args.fetch(:answer, "")
  end

  def question
    "What is the associated term?\n    #{@question}"
  end

  def answer
    "#{@answer}"
  end

end
