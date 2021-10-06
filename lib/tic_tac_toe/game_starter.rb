module TicTacToe

  class GameStarter
    attr_reader :human_players

    def initialize(number = nil)
      solicit_number_of_players
      @human_players = number_of_players(number)
      TicTacToeGame.new(@human_players)
    end
    
    private

    def solicit_number_of_players
      puts 'How many players are there? 1 or 2?'
    end

    def number_of_players(number = gets.chomp.to_i)
      begin
        return number if number == 1
        return number if number == 2

        raise InputError, 'Incorrect value entered for number of players'
      rescue InputError
        solicit_number_of_players
        number_retry = gets.chomp.to_i
        return number_of_players if [1,2].include?(number_retry)

        raise InputError, 'Incorrect value entered for number of players'
      end
    end
  end

  class InputError < StandardError; end
end

# new_game = GameStarter.new
# players = Notifcation.player_names(new_game.human_players)
# TicTacToeGame.new(players).play_game
