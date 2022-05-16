require_relative '../../models/init.rb'

describe '#points' do
    let(:team_1) { Team.new(name: 'T1') }
    let(:team_2) { Team.new(name: 'T2') } 
    let(:match) { Match.new(local: team_1, visitor: team_2) }
    let(:prediction) { Prediction.new(match: match, team1_goals: 1, team2_goals: 0) }
    let(:result) { Result.new(match: match, team1_goals: 1, team2_goals: 0) }
    let(:point) {Point.new(result: result, prediction: prediction)}

    describe 'When prediction succeed' do
        let(:result) { Result.new(match: match, team1_goals: 1, team2_goals: 0) }
        let(:point) {Point.new(result: result, prediction: prediction)}    
        it 'should return 3' do
            expect(point.calculatePoints).to eq(3)
        end
    end
    describe 'When prediction fails' do
        let(:result) { Result.new(match: match, team1_goals: 1, team2_goals: 1) }
        let(:point) {Point.new(result: result, prediction: prediction)}

        it 'should return 0' do
            expect(point.calculatePoints).to eq(0)
        end
    end
end