module TicTacToe
  class GameBoard
    attr_reader :grid

    def initialize(input = {})
      @grid = input.fetch(:grid, default_grid)
    end

    def get_cell(pos_x, pos_y)
      grid[pos_y][pos_x]
    end

    def set_cell(cell_x, cell_y, value)
      get_cell(cell_x, cell_y).value = value
    end

    private

    def default_grid
      Array.new(3) { Array.new(3) { Cell.new } }
    end
  end
end
