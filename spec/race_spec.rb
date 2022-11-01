require 'pry'
require './lib/candidate'
require './lib/race'

RSpec.describe 'Race class' do
  it 'exists' do
    race = Race.new("Texas Governor")

    expect(race).to be_a(Race)
  end
end