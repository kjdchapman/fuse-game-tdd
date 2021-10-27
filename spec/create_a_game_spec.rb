describe 'creating a game' do
  it 'starts with 5 shared cards' do
    cards = create_game(player_count: 1, difficulty: :training)
    expect(cards[:middle_row].count).to eq 5
  end

  context 'cards in front of me' do
  end
end

def create_game(player_count:, difficulty:)
  starting_deck = Deck.new(player_count, difficulty)

  players = []

  player_count.times do |position|
    starting_hand = deck.draw_starting_hand(player_count)
    players << Player.new(starting_hand)
  end

  middle_row = deck.draw_starting_middle_row

  {
    deck: deck.cards,
    middle_row: middle_row,
    players: players.map(|player| player.hand),
    defused: []
  }
end

# thinking out loud about the structure of game state
# cards = create_game(player_count, difficulty)
# cards = {
#   deck: [],
#   middle_row: [],
#   player1: [],
#   player2: [],
#   defused: []
# }