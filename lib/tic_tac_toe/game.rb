module TicTacToe
  class Game
    attr_reader :players, :board, :current_player, :other_player

    def initialize(number_of_players, board = Board.new)
      @number_of_players = number_of_players
      @players = Notification.player_names(number_of_players)
      @board = board
      @current_player, @other_player = @players.shuffle
      play_game_humans if number_of_players == 2
      play_game_computers if number_of_players == 1
    end

    def play_game
      Notification.start_game_message
      loop do
        Notification.player_turn(@current_player)
        board.display_board

      end
    end

    private

    def switch_players
      @current_player, @other_player = @other_player, @current_player
    end

    def get_human_move(human_move = gets.chomp.to_i)
      human_move_to_grid(human_move)
    end

    def human_move_to_grid(human_move)
      integer_hashmap = {
        "1": [0, 0], "2": [1, 0],
        "3": [2, 0], "4": [0, 1],
        "5": [1, 1], "6": [2, 1],
        "7": [0, 2], "8": [1, 2],
        "9": [2, 2]
      }
      integer_hashmap[human_move]
    end


  end
end
