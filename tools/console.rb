require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


lifter1 = Lifter.new("Alan",100)
lifter2 = Lifter.new("Bob",200)
lifter3 = Lifter.new("Claire",300)

gym1 = Gym.new("Gym1")
gym2 = Gym.new("Gym2")
gym3 = Gym.new("Gym3")

membership1 = Membership.new(50,lifter1,gym1)
membership2 = Membership.new(50,lifter1,gym3)
membership3 = Membership.new(90,lifter2,gym2)
membership4 = Membership.new(60,lifter3,gym2)


binding.pry
