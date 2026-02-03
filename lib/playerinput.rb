# frozen_string_literal: true

module TicTacToe
  # documentation
  class PlayerInput
    attr_reader :play

    def initialize
      @play
    end

    def ask_player
      puts "Enter a letter and number to select a square to play."
      @play = gets.chomp
      @play = @play.upcase
    end

    def validate_input?(play)
      %w[A B C].include?(play[0]) && %w[1 2 3].include?(play[1])
    end
  end
end
