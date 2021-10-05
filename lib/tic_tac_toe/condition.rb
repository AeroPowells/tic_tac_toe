module TicTacToe
  class Condition
    def initialize(game_board)
      @board = game_board
    end

    def game_over?
      return :winner if win_condition
      return :draw if draw_condition
      
      false
    end

    private

    def draw_condition
      @board.grid.flatten.map(&:value).none? { |element| element.to_s.empty? }
    end

    def win_condition
      winning_pos = @board.grid +
                    @board.grid.transpose +
                    diagonals
      winning_pos.each do |win_pos|
        return true if all_same?(win_pos.map(&:value))
      end
      false
    end

    def all_same?(grid_array)
      grid_array.all? { |element| element == grid_array[0] }
    end

    def diagonals
      [
        [@board.get_cell(0, 0), @board.get_cell(1, 1), @board.get_cell(2, 2)],
        [@board.get_cell(0, 2), @board.get_cell(1, 1), @board.get_cell(2, 0)]
      ]
    end
  end
end
