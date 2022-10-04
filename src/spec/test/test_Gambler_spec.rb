require_relative '../../models/init.rb'

describe '#Gambler' do
  let(:user) { Gambler.create(name: 'U1', Email: 'U@gmail.com') }
  describe 'load new gambler' do
    it ' should return true' do
      user2 = Gambler.new(name: 'U2', Email: 'U2@gmail.com')
      expect(user.valid?).to eq true
    end

    it 'should return false, name already exists' do
      user2 = Gambler.new(name: 'U1', Email: 'U2@gmail.com')
      expect(user2.valid?).to eq false
    end
    it 'should return false, email already exists' do
      user2 = Gambler.new(name: 'U2', Email: 'U@gmail.com')
      expect(user2.valid?).to eq false
    end
    it 'should return false, name not found' do
      user2 = Gambler.new(Email: 'U2@gmail.com')
      expect(user2.valid?).to eq false
    end
  end
  describe 'create_prediction method' do
    let(:team_1) { Team.new(name: 'T3') }
    let(:team_2) { Team.new(name: 'T4') }
    let(:match) { Match.new(local: team_1, visitor: team_2, round: 1) }
    it 'should return true' do
      pred = user.create_prediction(match, 1, 0)
      expect(pred.valid?).to eq true
    end
  end
end
