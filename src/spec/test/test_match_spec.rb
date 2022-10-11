# frozen_string_literal: true

require_relative '../../models/init'

describe 'valid Match' do
  let!(:team1) { Team.create(name: 'nigeria') }
  let!(:team2) { Team.create(name: 'argentina') }
  let!(:team3) { Team.create(name: 'italia') }
  let!(:team4) { Team.create(name: 'irak') }

  let!(:date) { DateTime.new(2022, 12, 3, 12, 10) }
  let!(:valid_match) { Match.create(local: team1, visitor: team2, round: 4, datetime: date) }

  describe 'when there is valid' do
    it 'Add a new match in db' do
      match = Match.new(local_id: 3, visitor_id: 4, round: 2, datetime: date)
      valid = match.valid?
      puts(match.errors.inspect)
      expect(valid).to eq(true)
    end
  end
end
describe 'invalid match' do
  let!(:team1) { Team.create(name: 'nigeria') }
  let!(:team2) { Team.create(name: 'argentina') }
  let!(:team3) { Team.create(name: 'italia') }
  let!(:team4) { Team.create(name: 'irak') }

  let!(:date) { DateTime.new(2022, 12, 3, 12, 10) }
  let!(:valid_match) { Match.create(local: team1, visitor: team2, round: 4, datetime: date) }
  it 'Add duplicated match but in diferent round' do
    match = Match.new(local_id: 1, visitor_id: 2, round: 2, datetime: date)
    expect(match.valid?).to eq(true)
  end
end

describe 'when there is invalid' do
  let!(:team1) { Team.create(name: 'nigeria') }
  let!(:team2) { Team.create(name: 'argentina') }
  let!(:team3) { Team.create(name: 'italia') }
  let!(:team4) { Team.create(name: 'irak') }

  let!(:date) { DateTime.new(2022, 12, 3, 12, 10) }
  let!(:valid_match) { Match.create(local: team1, visitor: team2, round: 4, datetime: date) }
  it 'Add duplicated match in db' do
    inv_match = Match.new(local_id: 1, visitor_id: 2, round: 4, datetime: date)
    expect(inv_match.valid?).to eq(false)
  end

  it 'Add match without round' do
    match = Match.new(local_id: 1, visitor_id: 4, datetime: date)
    valid = match.valid?
    expect(valid).to eq(false)
  end

  it 'Add match without one team' do
    match = Match.new(local_id: 1, round: 3, datetime: date)
    valid = match.valid?
    expect(valid).to eq(false)
  end
end
