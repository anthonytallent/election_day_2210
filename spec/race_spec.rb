require 'pry'
require './lib/candidate'
require './lib/race'

RSpec.describe 'Race class' do
  it 'exists' do
    race = Race.new("Texas Governor")

    expect(race).to be_a(Race)
  end

  it 'has an office role' do
    race = Race.new("Texas Governor")

    expect(race.office).to eq("Texas Governor")
  end

  describe '#register_candidate!' do
    it 'will register a candidate in the Candidate class and add them to the coordinates attribute' do
      race = Race.new("Texas Governor")

      candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})
      candidate2 = race.register_candidate!({name: "Roberto R", party: :republican})

      expect(candidate1).to be_a(Candidate)
      expect(candidate2).to be_a(Candidate)
      expect(race.candidates).to eq([candidate1, candidate2])
    end
  end
end