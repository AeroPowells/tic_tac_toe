module TicTacToe
  class Board
    attr_reader :cells

    WINNING_POS = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6],
      [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]
    ].freeze

    def initialize
      @cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    end

    def display_board
      puts <<-HEREDOC

        #{cells[0]} | #{cells[1]} | #{cells[2]}
      ---+---+---
        #{cells[3]} | #{cells[4]} | #{cells[5]}
      ---+---+---
        #{cells[6]} | #{cells[7]} | #{cells[8]}

      HEREDOC
    end

    def update_board(number, symbol)
      @cells[number] = symbol
    end

    def valid_move?(number)
      cells[number-1] == number
    end




  end
end