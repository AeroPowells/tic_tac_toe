module TicTacToe
  describe Condition do
    # test_cell = Struct.new(:value)
    let(:x_cell) { Cell.new('X') }
    let(:y_cell) { Cell.new('Y') }
    let(:empty) { Cell.new }
    context ':winner' do
      it 'does #game_over return :winner if there is a winner? in the column' do
        grid = [
          [x_cell, x_cell, empty],
          [x_cell, y_cell, y_cell],
          [x_cell, y_cell, y_cell]
        ]
        board = GameBoard.new(grid: grid)
        condition = Condition.new(board)
        expect(condition.game_over?).to eq(:winner)
      end
      it 'does #game_over return :winner if there is a winner? in the row' do
        grid = [
          [x_cell, x_cell, x_cell],
          [x_cell, y_cell, y_cell],
          [y_cell, x_cell, y_cell]
        ]
        board = GameBoard.new(grid: grid)
        condition = Condition.new(board)
        expect(condition.game_over?).to eq(:winner)
      end
      it 'does #game_over return :winner if there is a winner? in the diagonal' do
        grid = [
          [empty, x_cell, y_cell],
          [empty, y_cell, empty],
          [y_cell, y_cell, x_cell]
        ]
        board = GameBoard.new(grid: grid)
        condition = Condition.new(board)
        expect(condition.game_over?).to eq(:winner)
      end
      it 'does #game_over return false if there is no winner? in the column' do
        grid = [
          [x_cell, x_cell, empty],
          [empty, y_cell, y_cell],
          [x_cell, y_cell, y_cell]
        ]
        board = GameBoard.new(grid: grid)
        condition = Condition.new(board)
        expect(condition.game_over?).to be false
      end
    end
    context ':draw' do
      it 'does #game_over return :draw if there is a draw' do
        grid = [
          [x_cell, x_cell, empty],
          [x_cell, y_cell, y_cell],
          [empty, y_cell, y_cell]
        ]
        board = GameBoard.new(grid: grid)
        condition = Condition.new(board)
        expect(condition.game_over?).to be false
      end
      it 'does #game_over return nothing if there is a draw' do
        grid = [
          [x_cell, y_cell, x_cell],
          [x_cell, y_cell, y_cell],
          [y_cell, x_cell, x_cell]
        ]
        board = GameBoard.new(grid: grid)
        condition = Condition.new(board)
        expect(condition.game_over?).to eq(:draw)
      end
    end
  end
end
