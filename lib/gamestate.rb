# frozen_string_literal: true

module TicTacToe
  # documentation
  class GameState
    attr_reader :player_flag, :turn_counter

    def initialize
      @player_flag = "O"
      @turn_counter = 0
    end

    def switch_player_flag
      @player_flag = @player_flag == "X" ? "O" : "X"
    end

    def start_turn
      switch_player_flag
      @turn_counter += 1
      puts "Turn #{@turn_counter}, Player #{@player_flag}'s turn."
    end

    def win?(board)
      lines = []

      lines.concat(board)

      lines.concat(board.transpose)

      lines << [board[0][0], board[1][1], board[2][2]]
      lines << [board[0][2], board[1][1], board[2][0]]

      lines.any? { |line| line.all?("X") || line.all?("O") }
    end

    def win_game
      puts "Player #{@player_flag} emerges victorious!"
    end

    def draw_game
      puts "Nobody won, cringe."
    end
  end
end
