require 'board.rb'
describe Board do
    context "when  all the fields are occupied" do
        it "should return true on full? method" do
            board = Board.new
            i = 0
            board.fields.length.times {
                board.fields[i] = "X"
                i += 1
            }
            output = board.full?
            expect(output).to eq true
        end
    end
    context "when all the fields are free" do
        it "should return false on full? method" do
            board = Board.new
            output = board.full?
            expect(output).to eq false
        end
    end

    context "when only a few fields are occupied" do
        it "should return false on full? method" do
            board = Board.new
            i = 0
            3.times {
                board.fields[i] = "X"
                i += 1
            }
            output = board.full?
            expect(output).to eq false
        end
    end
    context "when a field is free" do
        it "should return true on is_free? method" do
            board = Board.new
            output = board.is_free?(1)
            expect(output).to eq true
        end
    end
    context "when a field is already occupied" do
        it "should return false on is_free? method" do
            board = Board.new
            board.fields[1] = "X"
            output = board.is_free?(1)
            expect(output).to eq false
        end
    end

    context "when the moves contains a winning combination" do
        it "should return true on win? method" do
            board = Board.new
            output = board.win?([0,1,2])
            expect(output).to eq true
        end
    end

    context "when  the moves does not contain a winning combination" do
        it "should return false on win? method" do
            board = Board.new
            output = board.win?([1,3,4])
            expect(output).to eq false
        end
    end
end
