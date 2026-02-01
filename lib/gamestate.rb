# frozen_string_literal: true

module TicTacToe
  # documentation
  class GameState
    attr_reader :player_flag, :turn_counter

    def initialize
      @player_flag = "X"
      @turn_counter = 1
    end

    def switch_player_flag
      @player_flag = @player_flag == "X" ? "O" : "X"
    end

    def count_turn
      @turn_counter += 1
    end

    def switch_turn
      switch_player_flag
      count_turn
      puts "Turn: #{@turn_counter}"
      puts "Player #{@player_flag}'s turn!"
    end

    def win?(board)
    end
  end
end
