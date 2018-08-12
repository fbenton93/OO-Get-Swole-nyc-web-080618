
class Lifter



  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def my_memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def my_gyms
    mems = Membership.all.select do |membership|
      membership.lifter == self
    end

    mems.collect do |membership|
      membership.gym
    end
  end

  def self.avg_lift_total
    total_lift = 0
    @@all.each do |lifter|
      total_lift += lifter.lift_total
    end

    (total_lift.to_f / @@all.length)

  end

  def my_membership_costs
    mems = my_memberships
    total_cost = 0
    mems.each do |membership|
      total_cost += membership.cost
    end
    total_cost
  end

  def new_membership(gym,cost)
    Membership.new(cost,self,gym)
  end


end
