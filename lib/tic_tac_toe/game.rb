module TicTacToe
  class Game
    attr_reader :players, :board, :current_player, :other_player

    def initialize(number_of_players, players, board = GameBoard.new)
      @number_of_players = number_of_players
      @players = players
      @board = board
      @current_player, @other_player = @players.shuffle
    end

    def play_game_humans
      Notification.new.start_game_message
      puts "#{current_player.name} is the first player"
      loop do
        board.display_board
        puts
        Notification.new.request_player_move(current_player)
        x_pos, y_pos = get_human_move
        board.set_cell(x_pos, y_pos, current_player.marker)
        board_condition = Condition.new(board)
        if board_condition.game_over? == :winner
          Notification.new.win_message(current_player)
          board.display_board
          break
        else
          switch_players
        end
      end
      return true if play_again_or_exit == :play_again

      false
    end

    def get_human_move(human_move = gets.chomp.to_s)
      human_move_to_grid(human_move)
    end

    def human_move_to_grid(human_move)
      integer_hashmap = {
        '1' => [0, 0], '2' => [1, 0],
        '3' => [2, 0], '4' => [0, 1],
        '5' => [1, 1], '6' => [2, 1],
        '7' => [0, 2], '8' => [1, 2],
        '9' => [2, 2]
      }
      integer_hashmap[human_move]
    end

    private

    def play_again_or_exit
      return :play_again if Notification.new.play_again?

      :exit
    end

    def switch_players
      @current_player, @other_player = @other_player, @current_player
    end


  end
end
