# frozen_string_literal: true

require_relative '../../models/init'

describe '#Create Gambler' do
  let(:user) { Gambler.create(name: 'U1', Email: 'U@gmail.com') }
  describe 'load new gambler' do
    it ' should return true' do
      Gambler.new(name: 'U2', Email: 'U2@gmail.com')
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
end

describe 'create_prediction method' do
  let(:team1) { Team.new(name: 'T3') }
  let(:team2) { Team.new(name: 'T4') }
  let(:match) { Match.new(local: team1, visitor: team2, round: 1) }
  let(:user) { Gambler.create(name: 'U1', Email: 'U@gmail.com') }
  it 'should return true' do
    pred = user.create_prediction(match, 1, 0)
    expect(pred.valid?).to eq true
  end
end
