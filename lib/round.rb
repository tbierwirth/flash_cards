require 'pry'
class Round
  attr_reader :deck, :turns, :current_card, :number_correct

  def initialize(deck)
    @deck = deck
    @turns = []
    @current_card = deck.cards[0]
    @number_correct = 0
  end

  def take_turn(guess)
    new_turn = Turn.new(guess, current_card)
    add_turn_to_turns(new_turn)
    if new_turn.correct?
      @number_correct += 1
    end
    move_to_next_card
    new_turn
  end

  def count
    @turn.length
  end

  def add_turn_to_turns(new_turn)
    @turns.push(new_turn)
  end

  def move_to_next_card
    current_index = deck.cards.index(current_card)
    next_index = current_index + 1
    @current_card = deck.cards[next_index]
  end

  def percent_correct
    (number_correct.to_f / @turns.length * 100).round(2)
  end

  def number_correct_per_category(category)
    @turns.count do |turn|
      turn.correct? && turn.card.category == category
    end
  end

end
