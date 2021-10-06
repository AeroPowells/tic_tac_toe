module TicTacToe
  class Notification
    def player_names(number_of_players, name = gets.chomp.to_s)
      players = []
      request_player_name
      if number_of_players == 1
        players.push(Player.new({ marker: 'O', name: 'name' }), Player.new({ marker: 'X', name: 'CPU' }))
      else
        request_player_name(2)
        player1 = gets.chomp.to_s
        players.push(Player.new({ marker: 'O', name: name }), Player.new({ marker: 'X', name: player1 }))
      end
      puts players[0].name
      players
      
    end

    def start_game_message
      puts 'Welcome to a game of Tic Tac Toe in the command line. You may choose to play against the CPU or against a friend'
    end

    def request_player_move(current_player)
      puts "#{current_player.name}: Enter a number between 1 and 9 to place your symbol"
    end

    def draw_message
      puts 'The game ended in a draw'
    end

    def win_message(current_player)
      puts "Congratulations #{current_player.name} you won!"
    end

    def request_player_name(number = 1)
      puts "Please enter player #{number} name"
    end

    def play_again?
      puts 'Do you wish to play again with the same players?'
      return true if gets.chomp.to_s.include? 'y'

      false
    end
  end
end
