require 'pry'
require './lib/candidate'
require './lib/race'

class Election
  attr_reader :year, :races

  def initialize(year)
    @year = year
    @races = []

  end

  def add_race(race)
    @races << race
  end

  def candidates_array # Was pressed for time and had no time for test. Returns nested arrays of candidates to be flattened by candidates method
    @races.map do |race|
      race.candidates
    end
  end

  def candidates
    candidates_array.flatten
  end

  def vote_counts
    votes = {}
    candidates.each do |candidate|
      votes[candidate.name] = candidate.votes
    end
    votes
  end
end
