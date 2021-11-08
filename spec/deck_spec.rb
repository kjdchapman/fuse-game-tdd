describe Deck do
  describe 'creating a new deck' do
    context 'without a difficulty level or player count' do
      it 'does not work' do
        expect { Deck.new }.to raise_error(ArgumentError)
      end
    end

    context 'on "training" level for one player' do
      it 'has 16 cards' do
        deck = Deck.new(player_count: 1, difficulty: :training)
        expect(deck.cards.count).to eq(16)
      end

      it 'the top card of the deck has conditions' do
        deck = Deck.new(player_count: 1, difficulty: :training)
        top_card = deck.cards.first

        expect(top_card[:conditions]).to_not be_empty
      end
    end
  end
end