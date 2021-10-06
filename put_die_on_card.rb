def put_die_on_card(die, card, position:)
  condition = card[:conditions][position - 1]

  dice_matches = die[:number] == condition[:number]

  card[:dice] = dice_matches ? [die] : []
  card[:defused] = dice_matches

  return card
end
