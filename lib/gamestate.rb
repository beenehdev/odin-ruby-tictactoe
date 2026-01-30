# frozen_string_literal: true

module TicTacToe
  # documentation
  class GameState
    attr_reader :player_flag

    def initialize
      @player_flag = "X"
    end

    def swap_player_flag
      @player_flag = @player_flag == "X" ? "O" : "X"
    end

    def win?; end

    def full?; end
  end
end
