class Gym

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def lifters
    memberships.collect do |membership|
      membership.lifter
    end
  end

  def lifter_names
    lifters.collect do |lifter|
      lifter.name
    end
  end

  def combined_lift_total
    total = 0
    lifters.each do |lifter|
      total += lifter.lift_total
    end
    total
  end

end
