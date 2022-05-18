require_relative '../../models/init.rb'

#Test
describe 'Prediction' do
  describe "valid" do
        describe 'when there is no prediction' do
            it "should be valid" do
                g1 = Gambler.create(name: 'Sebastian',lastname: 'Villa',Email: 'sevilla@gmail.com',Total_score: 0,predictions:)
                t1 = Team.create(name: 'nigeria')
                t2 = Team.create(name: 'argentina')
                m1 = Match(local: t1,visitor: t2)
                p1 = Prediction.create(match: m1,gambler: g1,team1_goals: 1,team2_goals: 2)
                g1.addPrediction(p1)
                r1 = Result.create(match: m1,team1_goals:1,team2_goals: 2)
                p1.changeScore()
                expect(p1.changeScore).to eq(g1.Total_score == 3)
            end
        end
    end
end
