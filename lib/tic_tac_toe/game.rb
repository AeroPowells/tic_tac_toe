module TicTacToe

  class Game
    attr_reader :human_players

    def initialize
      @human_players = number_of_players
      @game = Game.new
    end

    def number_of_players
      puts 'How many players are there?'
      number = gets.chomp
      return number if number == 1
      return number if number == 2

      puts 'Please press a key corresponding to either 1 or 2 players'
      number_of_players
    end
  end
end

# new_game = GameStarter.new
# players = Notifcation.player_names(new_game.human_players)
# TicTacToeGame.new(players).play_game
