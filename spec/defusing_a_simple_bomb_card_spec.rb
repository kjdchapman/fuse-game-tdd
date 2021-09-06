describe 'placing a dice on a bomb card' do
  context 'matching the conditions' do
    it 'works' do
      card = [{number: 2}]

      dice = [{number: 2, colour: :red}]

      result = put_dice_on_card(dice, card, position: 1)

      expect(result).to eq true
    end
  end

  xcontext 'not matching the conditions' do
    it 'complains' do
    end
  end
end

class GameState
  def put_dice_on_card(dice, card, position:)
    if valid_placement?(dice, card, position: position)
      change_game_state_to_actually_put_dice_on_card
    end

    return valid
  end

  def valid_placement?; end

  def change_game_state_to_actually_put_dice_on_card; end
end

class GameRules
  def valid_placement?; end
end