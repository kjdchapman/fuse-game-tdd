describe 'placing a die on a bomb card' do
  context 'matching the conditions' do
    let(:card) { {number: 2} }
    let(:die) { {number: 2, colour: :red} }

    it 'places the die on the card' do
      new_card = put_die_on_card(die, card, position: 1)
      expect(new_card[:dice].first).to eq(die)
    end

    xit 'defuses the card' do
      new_card = put_die_on_card(die, card, position: 1)
      expect(new_card[:defused]).to eq(true)
    end
  end

  xcontext 'not matching the conditions' do
    it 'complains' do
    end
  end
end

def put_die_on_card(die, card, position:)
  card[:dice] = [die]

  return card
end
