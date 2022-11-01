require 'pry'
require './lib/candidate'

class Race
  attr_reader :office, :candidates

  def initialize(office)
    @office = office
    @candidates = []

  end

  def register_candidate!(info)
    new_candidate = Candidate.new(info)
    @candidates.push(new_candidate)
    new_candidate
  end
end
