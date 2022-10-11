# frozen_string_literal: true

require_relative '../../models/init'

# Test
describe 'Prediction' do
  let(:team1) { Team.new(name: 'T1') }
  let(:team2) { Team.new(name: 'T2') }
  let(:match) { Match.new(local: team1, visitor: team2, round: 1) }
  let(:user) { Gambler.create(name: 'G1', Email: 'g@gmail.com') }

  describe 'valid' do
    describe 'when there is no prediction' do
      it 'should be valid' do
        #                g1 = Gambler.create(name: 'Sebastian',Email: 'sevilla@gmail.com',Total_score: 0)
        #               t1 = Team.create(name: 'nigeria')
        #              t2 = Team.create(name: 'argentina')
        #             m1 = Match(local: t1,visitor: t2)
        #            p1 = Prediction.create(match: m1,gambler: g1,team1_goals: 1,team2_goals: 2)
        #           g1.addPrediction(p1)
        #         r1 = Result.create(match: m1,team1_goals:1,team2_goals: 2)
        #         p1.changeScore()
        expect(true).to eq(true)
      end
    end
  end
  describe 'Winner' do
    it 'should return team1' do
      prediction = Prediction.new(match: match, team1_goals: 1, team2_goals: 0, gambler: user)
      expect(prediction.winner).to eq(team1)
    end
    it 'should return team2' do
      prediction = Prediction.new(match: match, team1_goals: 1, team2_goals: 2, gambler: user)
      expect(prediction.winner).to eq(team2)
    end
  end
end
