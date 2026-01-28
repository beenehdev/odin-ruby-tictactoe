# frozen_string_literal: true

# documentation
class PlayerInput
  def initialize
    @player_flag = true
  end

  def take_turn
  end

  def ask_player
    @play = gets.chomp
    @play = @play[0, 2].upcase
    # Guard for other edge cases
  end

  def validate_input
    nil if @play[0] == A || B || C and @play[1] == 1 || 2 || 3
    # Warn player, prompt again
  end

  def pass_to_board
    # send play to board, get return value 1 for legal, 0 for illegal
    # if legal, swap player_flag
    # if illegal, warn player, reprompt for legal turn
  end
end
