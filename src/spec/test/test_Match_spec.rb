require_relative '../../models/init.rb'

#Test
describe 'Match' do
  describe "valid" do
        describe 'when there is valid' do
            let!(:team_1) {Team.create(name: 'nigeria')}
            let!(:team_2) {Team.create(name: 'argentina')}
            let!(:team_3) {Team.create(name: 'italia')}
            let!(:team_4) {Team.create(name: 'irak')}

            let!(:date){DateTime.new(2022,12,3,12,10)}
            let!(:valid_match) {Match.create(local: team_1, visitor: team_2, round: 4, datetime: date)}
            
            it "Add a new match in db" do
                match = Match.new(local_id: 3, visitor_id: 4, round:2, datetime: date)
                valid = match.valid?
                puts(match.errors.inspect)
                expect(valid).to eq(true)
            end

            it "Add duplicated match but in diferent round" do
                match = Match.new(local_id: 1, visitor_id: 2, round: 2, datetime: date)
                expect(match.valid?).to eq(true)
            end
            
            it "Add duplicated match in db" do
                inv_match = Match.new(local_id: 1, visitor_id: 2, round: 4, datetime: date)
                expect(inv_match.valid?).to eq(false)
            end
        end
    end
end
