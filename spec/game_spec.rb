require 'game.rb'
require 'player.rb'
require 'board.rb'
describe Game do
    context "when the board is not full" do
        it "should return false on game_over? method" do
            player1 = Player.new("Noordeen", "X")
            player2 = Player.new("Mesi", "0")
            board = Board.new
            game = Game.new(player1, player2, board)
            output = game.game_over?
            expect(output).to eq false
        end
    end
    context "when the board is full" do
        it "should return true on game_over? method" do
            player1 = Player.new("Noordeen", "X")
            player2 = Player.new("Mesi", "0")
            board = Board.new
            i = 0
            board.fields.length.times {
                board.fields[i] = "X"
                i += 1
            }
            game = Game.new(player1, player2, board)
            output = game.game_over?
            expect(output).to eq true
        end
    end
    context "when a player plays and plays a winning move" do
        it "should return 1 on switch_players method" do
            player1 = Player.new("Noordeen", "X")
            player2 = Player.new("Mesi", "0")
            board = Board.new
            i = 0
            2.times {
                player1.moves << i
                i += 1
            }
            game = Game.new(player1, player2, board)
            output = game.switch_players(player1)
            expect(output).to eq 1
        end
    end
    context "when a player playsbut not playing a winning move" do
        it "should return 0 on switch_players method" do
            player1 = Player.new("Noordeen", "X")
            player2 = Player.new("Mesi", "0")
            board = Board.new
            game = Game.new(player1, player2, board)
            output = game.switch_players(player1)
            expect(output).to eq 0
        end
    end
end
