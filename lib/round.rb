require 'pry'
class Round
  attr_reader :deck, :turns, :current_card

  def initialize(deck)
    @deck = deck
    @turns = []
    @current_card = deck.cards[0]
  end

  def take_turn(guess)
    new_turn = Turn.new(guess, current_card)
    add_turn_to_turns(new_turn)
#    move_to_next_card
    new_turn
  end

  def add_turn_to_turns(new_turn)
    @turns.push(new_turn)
  end

  def move_to_next_card
    current_index = deck.cards.index(current_card)
    next_index = current_index + 1
    @current_card = deck.cards[next_index]
  end

  def correct?
    @guess == @card.answer
  end

end
