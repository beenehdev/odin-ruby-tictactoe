# frozen_string_literal: true

module TicTacToe
  # documentation
  class Board
    def initialize
      @moves = []
      @board_variable = Array.new(3) { Array.new(3, "_") }
    end

    def validate_move(player_input)
      @moves.includes?(player_input) ? false : @moves << player_input
    end

    def assign_play_input(play)
    end

    def draw_board
      # pseudocode puts
      puts " _ _ _"
      puts "|_|_|_| A"
      puts "|_|_|_| B"
      puts "|_|_|_| C"
      puts " 1 2 3"
    end

    def check_win
      aa
    end
  end
end
