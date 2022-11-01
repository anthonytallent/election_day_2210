require 'pry'
require './lib/candidate'

RSpec.describe 'Candidate class' do
  it 'exists' do
    diana = Candidate.new({name: "Diana D", party: :democrat})

    expect(diana).to be_a(Candidate)
  end

  it 'has a name' do
    diana = Candidate.new({name: "Diana D", party: :democrat})

    expect(diana.name).to eq("Diana D")
  end

  it 'has a party' do
    diana = Candidate.new({name: "Diana D", party: :democrat})

    expect(diana.party).to eq(:democrat)
  end

  it 'has a count of its votes' do
    diana = Candidate.new({name: "Diana D", party: :democrat})

    expect(diana.votes).to eq(0)
  end

  describe '#vote_for' do
    it 'will add 1 to the vote count' do
      diana = Candidate.new({name: "Diana D", party: :democrat})

      diana.vote_for!

      expect(diana.votes).to eq(1)

      diana.vote_for!
      diana.vote_for!

      expect(diana.votes).to eq(3)

      diana.vote_for!

      expect(diana.votes).to eq(4)
    end
  end
end