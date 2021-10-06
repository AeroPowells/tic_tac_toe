module TicTacToe
  RSpec.describe GameBoard do
    context 'managing a grid in command line' do
      it 'Has an array with 3 nested arrays' do
        board = GameBoard.new
        expect(board.grid.count).to eq 3
      end
      it 'has an array with 3 elements in each nested array' do
        board = GameBoard.new
        board.grid.each { |row| expect(row.count).to eq 3 }
      end
    end
    context '#get_cell' do
      it 'returns the cell based on the x,y coordinate given' do
        grid = [['', '', ''], ['', '', 'something'], ['', '', '']]
        board = GameBoard.new(grid: grid)
        expect(board.get_cell(2, 1)).to eq 'something'
      end
    end
    context '#set_cell' do
      it 'sets the cell at the (x,y) coordinate' do
        cell = Cell.new(:value)
        grid = [[cell, '', ''], ['', '', ''], ['', '', cell]]
        board = GameBoard.new(grid: grid)
        board.set_cell(2, 2, 'X')
        expect(board.get_cell(2, 2).value).to eq 'X'
      end
    end
  end
end
