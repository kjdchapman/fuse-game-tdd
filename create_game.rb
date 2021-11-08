require_relative 'deck'

def create_game(player_count:, difficulty:)
  deck = Deck.new(player_count, difficulty)

  players = []

  player_count.times do |position|
    starting_hand = deck.draw_starting_hand
    players << Player.new(starting_hand)
  end

  middle_row = deck.draw_starting_middle_row

  {
    deck: deck.cards,
    middle_row: middle_row,
    players: players.map{|player| player.hand},
    defused: []
  }
end

class Player
  def initialize(starting_hand)
  end

  def hand
  end
end