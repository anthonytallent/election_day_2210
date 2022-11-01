require 'pry'
require './lib/candidate'
require './lib/race'

class Election
  attr_reader :year, :races

  def initialize(year)
    @year = year
    @races = []

  end
end
