require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'

class TurnTest < Minitest::Test

  def test_the_turn
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)

    assert_instance_of Turn, turn
  end

  # def test_turn_card_question
  #   card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  #   turn = Turn.new("Juneau", card)
  #
  #   assert_equal "What is the capital of Alaska?", turn.card
  # end

  # def test_turn_card_answer
  #   card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  #   turn = Turn.new("Juneau", card)
  #
  #   assert_equal "Juneau", turn.card
  # end
  #
  # def test_turn_card_category
  #   card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  #   turn = Turn.new("Juneau", card)
  #
  #   assert_equal :Geography, turn.card
  # end
  def test_turn_guess
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)

    assert_equal "Juneau", turn.guess
  end

end
