# frozen_string_literal: true

board = Board.new
player_input = PlayerInput.new
game_state = GameState.new

# algorithmic game flow
# 1: Start game (Draw a clear board, set player_turn to player 1)
# 2: Prompt player for input to grid A-C / 1-3
# 3: Validate input
# 4: Send to board (Player, column, row)
# 5: Board validates position is not already filled
# 6: Board draws new position onto board
# 6.1: Board saves positions of all past placements
# 7: Board asks game_state if there is a winner
# 8a: Gamestate assesses for any 3 in a rows
# 8b: Gamestate assesses if there are any moves left to be played
# 9: Gamestate changes player_turn to player 2
