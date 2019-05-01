class Turn
  attr_reader :guess, :card

  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def correct?
    if @guess == @card.answer
      return true
    elsif
      @guess != @card.answer
      return false
    end
  end

  def feedback
    if @guess == @answer
      put "Correct!"
    elsif @guess != @answer
      put "Incorrect!"
    end
  end
end
