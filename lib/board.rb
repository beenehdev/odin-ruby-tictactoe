# frozen_string_literal: true

module TicTacToe
  # documentation
  class Board
    attr_reader :board

    def initialize
      @moves = []
      @board = Array.new(3) { Array.new(3, "_") }
    end

    def translate_input(input)
      @col = input.ord - "A".ord
      @row = input[1].to_i - 1
    end

    def validate_move(player_input)
      result = !@moves.include?(player_input)
      @moves << player_input if result
      result
    end

    def assign_input(play, player_flag)
      translate_input(play)
      @board[@col][@row] = player_flag
    end

    def draw_board
      puts "  1 2 3"

      @board.each_with_index do |row, index|
        label = ("A".ord + index).chr
        puts "#{label} #{row.join('|')}"
      end
    end
  end
end
