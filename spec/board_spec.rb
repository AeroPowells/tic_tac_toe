# frozen_string_literal: true

require 'spec_helper'
module TicTacToe
  RSpec.describe Board do
    context 'managing a grid in command line' do
      it 'Has an array with 3 nested arrays' do
        board = Board.new
        expect(board.grid.count).to eq 3
      end
      it 'has an array with 3 elements in each nested array' do
        board = Board.new
        board.grid.each { |row| expect(row.count).to eq 3 }
      end
    end
    context '#get_cell' do
      it 'returns the cell based on the x,y coordinate given' do
        grid = [['', '', ''], ['', '', 'something'], ['', '', '']]
        board = Board.new(grid: grid)
        expect(board.get_cell(2, 1)).to eq 'something'
      end
    end
    context '#set_cell' do
      it 'sets the cell at the (x,y) coordinate' do
        cell = Cell.new(:value)
        grid = [[cell, '', ''], ['', '', ''], ['', '', '']]
        board = Board.new(grid: grid)
        board.set_cell(0, 0, 'X')
        expect(board.get_cell(0, 0).value).to eq 'X'
      end
    end
  end
  describe Board do
    context '#game_over' do
      it 'correctly determines if the game is won' do
        board = Board.new
        allow(board).to receive(:game_won?) { true }
        expect(board.game_over).to eq(:winner)
      end
      it 'correctly determins if the game is drawn' do
        board = Board.new
        allow(board).to receive(:game_won?) { false }
        allow(board).to receive(:game_draw?) { true }
        expect(board.game_over).to eq(:draw)
      end
      it 'correctly determines that the game is neither won nor drawn' do
        board = Board.new
        allow(board).to receive(:game_won?) { false }
        allow(board).to receive(:game_draw?) { false }
        expect(board.game_over).to be false
      end
    end
  end
end
