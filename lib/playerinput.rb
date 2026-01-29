# frozen_string_literal: true

# documentation
class PlayerInput
  def initialize
    @player_one = :X
    @player_two = :O
  end

  def take_turn
  end

  def ask_player
    @play = gets.chomp
    @play = @play[0, 2].upcase
    # Guard for other edge cases
  end

  def validate_input
    nil if %w[A B C].include?(@play[0]) && %w[1 2 3].include?(@play[1])
    # Warn player, prompt again
  end

  def pass_to_board
    # send play to board, get return value 1 for legal, 0 for illegal
    # if legal, ask to swap player flag
    # if illegal, warn player, reprompt for legal turn
  end
end
