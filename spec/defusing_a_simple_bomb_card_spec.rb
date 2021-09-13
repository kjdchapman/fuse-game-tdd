require_relative("../put_die_on_card")

describe 'placing a die on a bomb card' do
  context 'matching the conditions' do
    let(:card) { {number: 2} }
    let(:die) { {number: 2, colour: :red} }

    it 'places the die on the card' do
      new_card = put_die_on_card(die, card, position: 1)
      expect(new_card[:dice].first).to eq(die)
    end

    it 'defuses the card' do
      new_card = put_die_on_card(die, card, position: 1)
      expect(new_card[:defused]).to be true
    end
  end

  context 'not matching the conditions' do
    let(:card) { {number: 3} }
    let(:die) { {number: 2, colour: :red} }

    it 'does not place the die on the card' do
      new_card = put_die_on_card(die, card, position: 1)
      expect(new_card[:dice]).to be_empty
    end

    it 'does not defuse the card' do
      new_card = put_die_on_card(die, card, position: 1)
      expect(new_card[:defused]).to be false
    end
  end
end

describe 'winning the game' do
  context 'if all but 2 cards are defused we win!' do
  end
end
