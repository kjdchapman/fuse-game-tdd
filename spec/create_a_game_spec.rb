describe 'creating a game' do
  it 'starts with 5 shared cards' do
    cards = create_game
    expect(cards.count).to eq 5
  end

  context 'cards in front of me' do
  end
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