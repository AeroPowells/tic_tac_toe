module TicTacToe
  class Notification
    def player_names(number_of_players)
      players = []
      if number_of_players == 1
        players.push(Player.new({ marker: 'X', name: 'CPU' }))
        name = Notification.player_name
        players.push(Player.new({ marker: 'O', name: name }))
      else
        player1 = Notification.player_name
        players.push(Player.new({ marker: 'X', name: player1 }))
        player2 = Notification.player_name(2)
        players.push(Player.new({ marker: 'O', name: player2 }))
      end
      players
    end

    def start_game_message
      puts 'Welcome to a game of Tic Tac Toe in the command line'
      puts 'You may choose to play against the CPU or against a friend'
    end

    
  end
end
