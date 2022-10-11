# frozen_string_literal: true

require_relative '../../models/init'

describe '#Result' do
  let(:team1) { Team.new(name: 'T1') }
  let(:team2) { Team.new(name: 'T2') }
  let(:match) { Match.new(local: team1, visitor: team2, round: 1) }

  describe 'load a new result' do
    it 'should return false, no match associated' do
      result = Result.new(team1_goals: 1, team2_goals: 0)
      expect(result.valid?).to be false
    end

    it 'should return false, no team1_goals' do
      result = Result.new(match: match, team2_goals: 0)
      expect(result.valid?).to be false
    end

    it 'should return true' do
      result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
      expect(result.valid?).to be true
    end
  end
end

describe 'calculatePoints method' do
  let(:team1) { Team.new(name: 'T1') }
  let(:team2) { Team.new(name: 'T2') }
  let(:match) { Match.new(local: team1, visitor: team2, round: 1) }
  let(:user) { Gambler.new(name: 'G1', Email: 'g@gmail.com') }
  let(:prediction) { Prediction.create(gambler: user, match: match, team1_goals: 1, team2_goals: 0) }
  it 'should calculate 2 points' do
    result = Result.new(match: match, team1_goals: 2, team2_goals: 1)
    expect(result.calculatePoints(prediction)).to eq(2)
  end

  it 'should calculate 3 points' do
    result = Result.new(match: match, team1_goals: 2, team2_goals: 0)
    expect(result.calculatePoints(prediction)).to eq(3)
  end

  it 'should calculate 4 points' do
    result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
    expect(result.calculatePoints(prediction)).to eq(4)
  end

  it 'should calculate 0 points' do
    result = Result.new(match: match, team1_goals: 0, team2_goals: 1)
    expect(result.calculatePoints(prediction)).to eq(0)
  end
end

describe 'Winner' do
  let(:team1) { Team.new(name: 'T1') }
  let(:team2) { Team.new(name: 'T2') }
  let(:match) { Match.new(local: team1, visitor: team2, round: 1) }
  it 'should return team1' do
    result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
    expect(result.winner).to eq(team1)
  end
  it 'should return team2' do
    result = Result.new(match: match, team1_goals: 1, team2_goals: 2)
    expect(result.winner).to eq(team2)
  end
end

describe 'Change Score Method' do
  #        describe 'When prediction fails' do
  #           it 'should return 0' do
  #              result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
  #             result.change_score
  #            user = Gambler.where(id: 1).first
  #           puts(user.name)
  #          expect(user.Total_score).to eq(0)
  #     end
  # end

  #        describe 'When prediction succeed' do
  #           it 'should return 2' do
  #              result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
  #             result.change_score
  #            user = Gambler.where(name: 'G1').first
  #           expect(user.Total_score).to eq(2)
  #      end
  # end
end
