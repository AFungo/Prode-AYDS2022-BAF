require_relative '../../models/init.rb'

#Test
describe 'Match' do
  describe "valid" do
        describe 'when there is no match' do
            it "should be valid" do
                t1 = Team.new(name: 'nigeria')
                t2 = Team.new(name: 'argentina')
                m = Match.new(local: t1, visitor: t2)
                valid = match.valid
                expect(valid).to eq(true)
            end
        end
    end
end
