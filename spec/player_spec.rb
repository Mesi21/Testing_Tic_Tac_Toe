require 'player.rb'
require 'board.rb'
describe Player do
    context "when a player makes a choice it updates the player's moves and also the board" do
        it "should return true on update method" do
              player = Player.new("Noordeen", "X")
              board = Board.new
              output = player.update(1, board)
              expect(output).to eq true
        end
    end
end