class Waiter
  
  attr_reader :age 
  attr_accessor :years_of_experience, :customer
  
  @@all = []
  
  def initialize(age,years_of_experience)
    @age = age 
    @years_of_experience = years_of_experience
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def new_meal(customer, total, tip)
   Meal.new(self, customer, total, tip)
  end
  
  def meals
    Meal.all.select {|meal| meal.waiter == self }
  end
  
  def waiters
    x = meals
    y = []
    x.each {|xmeal| y << xmeal.waiter}
    y 
  end
  
  
end