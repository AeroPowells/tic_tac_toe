# frozen_string_literal: true

require 'tic_tac_toe/version'
module TicTacToe
  class Error < StandardError; end

  class TicTacToeGame
   

    def play_again_or_exit
      return :play_again if answer?

      :exit
    end
  end
end



require_relative './tic_tac_toe/cell'
require_relative './tic_tac_toe/player'
require_relative './tic_tac_toe/game_board'
require_relative './tic_tac_toe/game_starter'
require_relative './tic_tac_toe/condition'
