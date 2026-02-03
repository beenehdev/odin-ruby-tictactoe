# frozen_string_literal: true

require_relative "lib/board"
require_relative "lib/gamestate"
require_relative "lib/playerinput"

board = TicTacToe::Board.new
player_input = TicTacToe::PlayerInput.new
game_state = TicTacToe::GameState.new

def valid_move?(play, player_input, board)
  player_input.validate_input?(play) && board.validate_move(play)
end

def play_turn(player_input, board, game_state)
  play = player_input.ask_player

  unless valid_move?(play, player_input, board)
    warn 'Invalid move. Use LETTER-NUMBER format, like "B1".'
    return
  end

  board.assign_input(play, game_state.player_flag)
  board.draw_board

  if game_state.win?(board.board)
    game_state.win_game
    return :win
  end

  game_state.start_turn
end

def main(player_input, board, game_state)
  board.draw_board
  game_state.start_turn

  loop do
    result = play_turn(player_input, board, game_state)

    break puts("Draw game!") if game_state.turn_counter == 9
    break if result == :win
  end
end

main(player_input, board, game_state)
