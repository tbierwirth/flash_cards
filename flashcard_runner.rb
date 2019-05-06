require './lib/round'
require './lib/deck'
require './lib/turn'
require './lib/card'

card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
ccard_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

cards = [@card_1, @card_2, @card_3]
deck     = Deck.new(cards)
round    = Round.new(deck)
