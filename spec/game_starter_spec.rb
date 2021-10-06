module TicTacToe
  describe GameStarter do
    context '#number_of_players' do
      it 'returns number of players correctly' do
        game_start = GameStarter.new(1)
        expect(game_start.human_players).to eq(1)
      end
      it 'raises an InputError when integer is incorrect' do
        expect { GameStarter.new(4) }.to raise_error(InputError)
      end
    end
  end
end
