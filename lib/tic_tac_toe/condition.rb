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
    # def game_draw?
    #   cells.all? { |cell| cell =~ /[^0-9]/ }
    # end

    # def game_won?
    #   WINNING_POS.any? do |combo|
    #     [cells[combo[0]], cells[combo[1]], cells[combo[2]]].uniq.length == 1
    #   end
    # end
    def win_condition
      winning_pos = @board.grid +
                    @board.grid.transpose +
                    diagonals
      winning_pos.each do |win_pos|
        next if all_empty?(win_pos.map(&:value))
        return true if all_same?(win_pos.map(&:value))
      end
      false
    end

    def all_empty?(grid_array)
      grid_array.all? { |element| element.to_s.empty? }
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
