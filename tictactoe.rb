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
  loop do
    game_state.switch_turn
    break if game_state.turn_counter > 9

    play = player_input.ask_player
    unless validate_main(play, player_input, board).all?
      warn "Invalid move. Use LETTER-NUMBER format. Like \"B1\""
      next
    end

    board.assign_input(play, game_state.player_flag)
    board.draw_board

    game_state.win?(board.board)
    # Puts player win if win detected
  end
end

main(player_input, board, game_state)
