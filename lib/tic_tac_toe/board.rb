require "spec_helper"

module TicTacToe
    class Board
        attr_reader :grid
        def initialize(input = {})
            @grid = input.fetch(:grid, default_grid)
        end

        def get_cell(x,y)
            grid[y][x]
        end

        def set_cell(x,y, value)
            get_cell(x,y).value = value
        end

        def game_over
            return :winner if game_won?
            return :draw if game_draw?
            false
        end

        private 
        def default_grid
            Array.new(3) {Array.new(3) {Cell.new}}
        end

        def game_won?
        end

        def game_draw?

        end


    end
end