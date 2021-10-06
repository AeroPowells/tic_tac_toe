module TicTacToe
  describe Notification do
    context '#player_names' do
      it 'does player names return the correct name' do
        players = [
          Player.new({ marker: 'O', name: 'name' }),
          Player.new({ marker: 'X', name: 'CPU' })
        ]
        noti = Notification.new.player_names(1, 'name')
        expect(noti[0].name).to eq(players[0].name)
      end
      it 'does player names return the correct marker' do
        players = [
          Player.new({ marker: 'O', name: 'name' }),
          Player.new({ marker: 'X', name: 'CPU' })
        ]
        noti = Notification.new.player_names(1, 'name')
        expect(noti[0].marker).to eq(players[0].marker)
      end
      it 'does player names return the correct name second?' do
        players = [
          Player.new({ marker: 'O', name: 'name' }),
          Player.new({ marker: 'X', name: 'CPU' })
        ]
        noti = Notification.new.player_names(1, 'name')
        expect(noti[1].name).to eq(players[1].name)
      end
      xit 'does player names return the correct name' do
        players = [
          Player.new({ marker: 'O', name: 'name' }),
          Player.new({ marker: 'X', name: 'CPU' })
        ]
        noti = Notification.new.player_names(2, 'name')
        expect(noti[0].name).to eq(players[0].name)
      end
    end
    context '#start_game_message' do
      it 'does the start_game_message output when called?' do
        expect { Notification.new.start_game_message }
          .to output('Welcome to a game of Tic Tac Toe '\
                    'in the command line. '\
                    'You may choose to play against '\
                    "the CPU or against a friend\n").to_stdout
      end
    end
    context '#request_player_move' do
      let(:current_player) { Player.new({ name: 'Player1', marker: 'X' }) } 
      it 'returns the correct player number' do
        expect { Notification.new.request_player_move(current_player) }
          .to output(
            "#{current_player.name}: "\
            'Enter a number between 1 and 9 '\
            "to place your symbol\n"
          ).to_stdout
      end
    end
    context '#draw_message' do
      it 'does draw_message output correctly' do
        expect { Notification.new.draw_message }.to output(
          "The game ended in a draw\n"
        ).to_stdout
      end
    end
    context '#win_message' do
      let(:current_player) { Player.new({ name: 'Test Player', marker: 'X' }) }
      it 'outputs a message with the correct name for the current player' do
        expect { Notification.new.win_message(current_player) }
          .to output(
            "Congratulations #{current_player.name} you won!\n"
          ).to_stdout
      end
    end
    context '#request_player_name' do 
      it 'outputs a request for the player number to enter their name' do
        number = 2
        expect { Notification.new.request_player_name(number) }
          .to output(
            "Please enter player #{number} name\n"
          ).to_stdout
      end
    end
  end
end
