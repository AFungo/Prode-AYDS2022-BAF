require_relative '../../models/init.rb'

#Test
describe 'Match' do
  describe "valid" do
        describe 'when there is no match' do
            it "should be valid" do
                t1 = Team.create(name: 'nigeria')
                t2 = Team.create(name: 'argentina')
                m = Match.create(local: t1, visitor: t2)
                expect(m.check_prop).to eq(true)
            end
        end
    end
end
