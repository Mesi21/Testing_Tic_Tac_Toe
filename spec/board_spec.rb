require 'board.rb'
describe Board do
    context "when  all the fields are occupied"
        it "should return false"
            board = Board.new
            i = 0
            board.fields.times {
                board.fields[i] = "X"
                i += 1
            }
            output = board.full?
            expect(output).to eq true
        end
    end 
end
