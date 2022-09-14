require_relative '../../models/init.rb'

describe '#Result' do
    let(:team_1) { Team.new(name: 'T1') }
    let(:team_2) { Team.new(name: 'T2') } 
    let(:match) { Match.new(local: team_1, visitor: team_2, round: 1) }

    describe 'load a new result' do
   
        it 'should return false, no match associated' do
            result = Result.new(team1_goals: 1, team2_goals: 0)
            expect(result.save).to be false
        end
   
        it 'should return false, no team1_goals' do
            result = Result.new(match: match, team2_goals: 0)
            expect(result.save).to be false
        end
   
        it 'should return true' do
            result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
            expect(result.save).to be true
        end
    end

    let(:user) {Gambler.create(name: 'G1', Email: 'g@gmail.com')}
    let(:prediction) { Prediction.create(gambler: user, match: match, team1_goals: 1, team2_goals: 0) }
    
    describe 'Change Score Method' do        
        
        describe 'When prediction succeed' do
            it 'should return 3' do
                prediction.save
                result = Result.create(match: match, team1_goals: 1, team2_goals: 0) 
                result.change_score
                user = Gambler.where(user).take
                expect(user.Total_score).to eq(3)
            end
        end
        
        describe 'When prediction fails' do
            let(:result) { Result.create(match: match, team1_goals: 1, team2_goals: 1) }
            it 'should return 0' do
                result.change_score
                expect(user.Total_score).to eq(0)
            end
        end
    end

    describe 'calculatePoints method' do

        it 'should calculate 3 points' do
            result = Result.new(match: match, team1_goals: 1, team2_goals: 0)
            expect(result.calculatePoints(prediction)).to eq(3)
        end

        it 'should calculate 0 points' do
            result = Result.new(match: match, team1_goals: 2, team2_goals: 1)
            expect(result.calculatePoints(prediction)).to eq(0)
        end
    end
end