# frozen_string_literal: true

require_relative "lib/board"
require_relative "lib/gamestate"
require_relative "lib/playerinput"

board = TicTacToe::Board.new
player_input = TicTacToe::PlayerInput.new
game_state = TicTacToe::GameState.new

def validate_main(input)
  arr = [player_input.validate_input?(input)]
  arr << board.validate_move(input)
end

# algorithmic game flow
# 1: Start game (Draw a clear board, set player_turn to player 1)
def main(player_input, board, game_state)
  loop do
    player_input.ask_player
    unless validate_main(player_input).all?
      warn "Invalid move. Use LETTER-NUMBER format. Like \"B1\""
      next
    end

    # 2: Prompt player for input to grid A-C / 1-3
    # 3: Validate input and add player flag
    play = player_input.play + game_state.player_flag
    # 4: Send to board (A-C, 1-3, player)
    board.assign_play_input(play)
    # 5: Board validates position is not already filled
    # 6: Board draws new position onto board
    # 6.1: Board saves positions of all past placements
    # 7: Board asks game_state if there is a winner
    # 8a: Gamestate assesses for any 3 in a rows
    # 8b: Gamestate assesses if there are any moves left to be played
    # 9: Gamestate changes player_turn to player 2
  end
end
