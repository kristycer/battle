require 'player'

describe Player do
    subject(:kristyna) { Player.new('Kristyna') }
    subject(:alex) { Player.new('Alex') }

    describe '#name' do
    it 'returns its name' do
        expect(kristyna.name).to eq 'Kristyna'
        end
    end




    describe '#hit_points' do
        it 'returns the hit points' do
          expect(kristyna.hit_points).to eq described_class::DEFAULT_HIT_POINTS
        end
      end

      # describe '#attack' do
      #     it 'damages the player' do
      #       expect(alex).to receive(:receive_damage)
      #       kristyna.attack(alex)
      #     end
      #   end

        describe '#receive_damage' do
          it 'reduces the player hit points' do
            expect { alex.receive_damage }.to change { alex.hit_points }.by(-10)
          end
        end
end
