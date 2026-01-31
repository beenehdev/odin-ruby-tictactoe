# frozen_string_literal: true

module TicTacToe
  # documentation
  class Board
    def initialize
      @moves = []
      @board_array = Array.new(3) { Array.new(3, "_") }
    end

    def translate_input
      # destructuring assignment for index?
      @column = {a, b, c = 0, 1, 2}
      @row = {1, 2, 3 = 0, 1, 2}
    end

    def validate_move(player_input)
      result = !@moves.include?(player_input)
      @moves << player_input if result
      result
    end

    def assign_play_input(play)
      translate_input(play)
      @board_array[@column][@row] = PLAYERFLAGVARIABLE?
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
