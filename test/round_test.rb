require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'
require 'pry'

class RoundTest < Minitest::Test

  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    @cards = [@card_1, @card_2, @card_3]
    @deck = Deck.new(@cards)

    @round = Round.new(@deck)
    # @new_turn = @round.take_turn(@guess)
  end

  def test_the_deck
    assert_instance_of Deck, @deck
  end

  def test_the_round
    assert_instance_of Round, @round
  end

  def test_deck_in_round
    assert_equal @deck, @round.deck
  end

  def test_for_no_turns
    assert_equal [], @round.turns
  end

  def test_current_card
    assert_equal @card_1, @round.current_card
  end

  def test_new_turn
    turn = Turn.new("Juneau", @card_1)
    new_turn = @round.take_turn("Juneau")

    assert_equal turn.card, new_turn.card
    assert_equal turn.guess, new_turn.guess
    assert_equal new_turn.class, Turn
    assert_equal new_turn.correct?, true
    # assert_equal new_turn, @round.turns
  end

  def test_number_correct
    @round.take_turn("Juneau")
    @round.take_turn("Venus")

    assert_equal 1, @round.number_correct
  end

  def test_number_correct_by_category
    @round.take_turn("Juneau")
    @round.take_turn("Venus")

    assert_equal 1, @round.number_correct_per_category(category)
  end

  def test_it_tracks_turns
    new_turn = @round.take_turn("Juneau")

    assert_equal [new_turn], @round.turns
  end

  def test_to_move_to_next_card
    assert_equal @card_1, @round.current_card
    @round.move_to_next_card
    assert_equal @card_2, @round.current_card
  end

end
