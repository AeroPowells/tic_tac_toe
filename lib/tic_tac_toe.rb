# frozen_string_literal: true

require_relative './tic_tac_toe/version'
require_relative './tic_tac_toe/cell'
require_relative './tic_tac_toe/player'
require_relative './tic_tac_toe/game_board'
require_relative './tic_tac_toe/game_starter'
require_relative './tic_tac_toe/condition'
require_relative './tic_tac_toe/notification'
require_relative './tic_tac_toe/game'
module TicTacToe
  class Error < StandardError; end

  start = GameStarter.new
  Notification.new.request_player_name
  players = Notification.new.player_names(start.human_players)
  loop do
    game = Game.new(start.human_players, players)
    break unless game.play_game_humans
  end
end
