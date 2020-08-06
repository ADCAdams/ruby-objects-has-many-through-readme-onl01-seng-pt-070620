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
  
  
  
  
end