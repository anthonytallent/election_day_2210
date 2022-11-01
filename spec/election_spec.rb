require 'pry'
require './lib/candidate'
require './lib/race'
require './lib/election'

RSpec.describe 'Election class' do
  it 'exists' do
    election = Election.new('2022')

    expect(election).to be_a(Election)
  end

  it 'has a year' do
    election = Election.new('2022')

    expect(election.year).to eq('2022')
  end

  it 'has an array of its races' do
    election = Election.new('2022')

    expect(election.races).to eq([])
  end
end