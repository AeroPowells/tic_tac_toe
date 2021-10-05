require "spec_helper"

module TicTacToe
    describe Player do 
        context "#intialize" do 
            it "color correctly read from input hash" do 
                input = {name: "Player1", color: "X"}
                player = Player.new(input)
                expect(player.color).to eq "X"
            end
            it "Name is correctly read from input hash" do 
                input = {name: "Player1", color: "X"}
                player = Player.new(input)
                expect(player.name).to eq "Player1"
            end
            it "Raises an error on incorrect hash initilization" do 
                input = {name: "Player1", color: "X"}
                expect {Player.new({})}.to raise_error {|error| 
                expect(error).to be_a(KeyError)
                }
            end
            it "does not raise error with a correct hash" do 
                input = {name: "Player1", color: "X"}
                expect {Player.new(input)}.to_not raise_error
            end
            
        end
    end
end