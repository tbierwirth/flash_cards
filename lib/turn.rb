require './lib/card.rb'

class Turn
  attr_reader :string, :card

  def initialize(string, card)
    @guess = string
    @card = card
  end

  def guess
  end

  def card

  end

  def correct?
  end

  def feedback
  end
end
