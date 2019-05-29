# frozen_string_literal: true

require_relative '../lib/game.rb'
require_relative '../lib/player.rb'
require_relative '../lib/board.rb'
describe Game do
  context 'when the board is not full' do
    let(:player1) { Player.new('Noordeen', 'X') }
    let(:player2) { Player.new('Mesi', 'O') }
    let(:board) { Board.new }
    let(:game) { Game.new(player1, player2, board) }
    it 'should return false on game_over? method' do
      output = game.game_over?
      expect(output).to eq false
    end
  end
  context 'when the board is full' do
    let(:player1) { Player.new('Noordeen', 'X') }
    let(:player2) { Player.new('Mesi', 'O') }
    let(:board) { Board.new }
    before do
      i = 0
      board.fields.length.times do
        board.fields[i] = 'X'
        i += 1
      end
    end
    let(:game) { Game.new(player1, player2, board) }
    it 'should return true on game_over? method' do
      output = game.game_over?
      expect(output).to eq true
    end
  end
  context 'when a player plays and plays a winning move' do
    let(:player1) { Player.new('Noordeen', 'X') }
    let(:player2) { Player.new('Mesi', 'O') }
    let(:board) { Board.new }
    before do
      i = 0
      2.times do
        player1.moves << i
        i += 1
      end
    end
    let(:game) { Game.new(player1, player2, board) }
    it 'should return 1 on switch_players method' do
      output = game.switch_players(player1)
      expect(output).to eq 1
    end
  end
  context 'when a player plays but not playing a winning move' do
    let(:player1) { Player.new('Noordeen', 'X') }
    let(:player2) { Player.new('Mesi', 'O') }
    let(:board) { Board.new }
    let(:game) { Game.new(player1, player2, board) }
    it 'should return 0 on switch_players method' do
      output = game.switch_players(player1)
      expect(output).to eq 0
    end
  end
end
