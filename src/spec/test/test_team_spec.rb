# frozen_string_literal: true

require_relative '../../models/init'

describe '#Team' do
  let(:team) { Team.create(name: 'URSS') }
  it 'should return false, invalid team name' do
    team.save
    team2 = Team.new(name: 'URSS')
    expect(team2.valid?).to be false
  end
  it 'should return true' do
    team2 = Team.new(name: 'Rusia')
    expect(team2.valid?).to be true
  end
end
