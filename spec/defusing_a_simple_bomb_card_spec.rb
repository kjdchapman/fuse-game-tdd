describe 'defusing a simple bomb card' do
  it 'looks right' do
    deck = Deck.new

    first_card = deck.deal

    expect(first_card.boxes.first).to eq({ number: 2, colour: nil })
  end

  it 'can have a dice placed on it' do
  end
end
