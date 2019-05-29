# frozen_string_literal: true

require_relative '../lib/player.rb'
require_relative '../lib/board.rb'
describe Player do
  context "when a player makes a choice it updates the player's moves and also the board" do
    let(:player) { Player.new('Noordeen', 'X') }
    let(:board) { Board.new }
    it 'should return true on update method' do
      output = player.update(1, board)
      expect(output).to eq true
    end
  end
end
