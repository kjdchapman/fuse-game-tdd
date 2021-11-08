require_relative('../create_game')

xdescribe 'creating a game' do
  it 'starts with 5 shared cards' do
    cards = create_game(player_count: 1, difficulty: :training)
    expect(cards[:middle_row].count).to eq 5
  end

  xcontext 'cards in front of me' do
  end
end
