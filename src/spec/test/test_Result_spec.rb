require_relative '../../models/init.rb'

describe '#Result' do
    let(:team_1) { Team.new(name: 'T1') }
    let(:team_2) { Team.new(name: 'T2') } 
    
    let(:user) {Gambler.new(name: 'G1', Email: 'g@gmail.com')}

    let(:match) { Match.new(local: team_1, visitor: team_2, round: 1) }    

    let(:prediction) { Prediction.new(gambler: user, match: match, team1_goals: 1, team2_goals: 0) }    
    
    describe 'When prediction succeed' do
        let(:result) { Result.new(match: match, team1_goals: 1, team2_goals: 0) }
        it 'should return 3' do
    
            result.change_score
            expect(user.Total_score).to eq(3)
        end
    end
    describe 'When prediction fails' do
        let(:result) { Result.new(match: match, team1_goals: 1, team2_goals: 1) }
        it 'should return 0' do
            result.change_score
            expect(user.Total_score).to eq(0)
        end
    end
end