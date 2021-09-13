def put_die_on_card(die, card, position:)
  dice_matches = die[:number] == card[:number]

  card[:dice] = dice_matches ? [die] : []
  card[:defused] = dice_matches

  return card
end
