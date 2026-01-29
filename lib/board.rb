# frozen_string_literal: true

# documentation
class Board
  def initialize
    @moves = []
  end

  def assign_play_input
    board_variable = Array.new(3) { Array.new(3, :_) }
  end

  def draw_board
    # pseudocode puts
    puts " _ _ _"
    puts "|_|_|_| 1"
    puts "|_|_|_| 2"
    puts "|_|_|_| 3"
    puts " A B C"
  end

  def check_win
    aa
  end
end
