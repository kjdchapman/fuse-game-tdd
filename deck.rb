class Deck
  def initialize(player_count:, difficulty:)
  end

  def cards
    (1..16).map{{ conditions: [{ number: 1 }]}}
  end

  def draw_starting_hand
  end

  def draw_starting_middle_row
    []
  end
end