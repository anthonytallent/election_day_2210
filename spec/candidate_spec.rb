require 'pry'
require './lib/candidate'

RSpec.describe 'Candidate class' do
  it 'exists' do
    diana = Candidate.new({name: "Diana D", party: :democrat})

    expect(diana).to be_a(Candidate)
  end
end