# frozen_string_literal: true

module TicTacToe
  # documentation
  class PlayerInput
    attr_reader :play

    def initialize
      @play = nil
    end

    def ask_player
      @play = gets.chomp
      @play = @play[0, 2].upcase
      # Guard for other edge cases
    end

    def validate_input?
      %w[A B C].include?(@play[0]) && %w[1 2 3].include?(@play[1])
    end
  end
end
