class Membership

  attr_accessor :lifter, :gym
  attr_reader :cost

  @@all = []

  def initialize(cost,lifter,gym)
    @cost = cost
    @lifter = lifter
    @gym = gym
    @@all << self
  end

  def self.all
    @@all
  end



end
