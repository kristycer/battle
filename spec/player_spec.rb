require 'player'

describe Player do
    subject(:kristyna) { Player.new('Kristyna') }
    subject(:alex) { Player.new('Alex') }

    describe '#name' do
    it 'returns its name' do
        expect(kristyna.name).to eq 'Kristyna'
        end 
    end 
end 
