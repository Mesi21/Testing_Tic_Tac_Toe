class Player
    attr_reader :name, :symbol, :moves
    def initialize(name, symbol)
        @name = name
        @symbol = symbol
        @moves = []
    end
    def update(choice,board)
       if (moves << choice) && (board.fields[choice] = symbol)
        true
       else 
        false
       end
    end
end