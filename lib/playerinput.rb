# frozen_string_literal: true

module TicTacToe
  # documentation
  class PlayerInput
    attr_reader :play

    def initialize
      @play
    end

    def ask_player
      @play = gets.chomp
      @play = @play.upcase
    end

    def validate_input?
      %w[A B C].include?(@play[0]) && %w[1 2 3].include?(@play[1])
    end
  end
end
