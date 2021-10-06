def put_die_on_card(die, card, position:)
  first_condition = card[:conditions][0]

  dice_matches = die[:number] == first_condition[:number]

  card[:dice] = dice_matches ? [die] : []
  card[:defused] = dice_matches

  return card
end
