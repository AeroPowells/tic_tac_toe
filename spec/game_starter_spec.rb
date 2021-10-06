module TicTacToe
  describe 'GameStarter' do
    context '#number_of_players' do
      xit 'returns number of players correctly' do
        # game_start = GameStarter.new
        expect(game_start.human_players).to eq(1)
      end
      xit 'returns number of players correctly' do
        # game_start = GameStarter.new
        expect(game_start.human_players).to eq(2)
      end
      xit 'raises an InputError when integer is incorrect' do
        # expect { GameStarter.new }.to raise_error(InputError)
      end
    end
  end
end
