def put_die_on_card(die, card, position:)
  unless card[:conditions].nil?
    card = card[:conditions][0]
  end

  if card[:conditions].nil?
    dice_matches = die[:number] == card[:number]

    card[:dice] = dice_matches ? [die] : []
    card[:defused] = dice_matches

    return card
  end
end
