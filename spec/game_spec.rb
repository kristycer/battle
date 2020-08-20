require 'game'

describe Game do
  subject(:game) { Game.new(player_1, player_2)}
  let(:player_1) { double :player }
  let(:player_2) { double :player }


describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end


describe '#player_1' do
  it 'creates an instance of P1' do
  expect(game.player_1).to eq player_1
  end
end

  describe '#player_2' do
    it 'creates an instance of P2' do
    expect(game.player_2).to eq player_2
    end
  end

  describe '#turn' do
    it 'player 1 starts' do
      expect(game.turn).to eq player_1
      end
    end
  describe '#switch_turn' do
    it 'switches the turn' do
      game.switch_turn
      expect(game.turn).to eq player_2
      end
    end
  end
