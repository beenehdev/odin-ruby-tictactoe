# frozen_string_literal: true

require_relative "lib/board"
require_relative "lib/gamestate"
require_relative "lib/playerinput"

board = TicTacToe::Board.new
player_input = TicTacToe::PlayerInput.new
game_state = TicTacToe::GameState.new

def validate_main(play, player_input, board)
  arr = [player_input.validate_input?]
  arr << board.validate_move(play)
end

def main(player_input, board, game_state)
  board.draw_board

  loop do
    if game_state.turn_counter == 9
      puts "Draw game!"
      return
    end

    win = true if game_state.win?(board.board)
    if win
      game_state.win_game
      return
    end

    game_state.start_turn

    play = player_input.ask_player
    unless validate_main(play, player_input, board).all?
      warn "Invalid move. Use LETTER-NUMBER format. Like \"B1\"."
      next
    end

    board.assign_input(play, game_state.player_flag)
    board.draw_board
  end
end

main(player_input, board, game_state)
