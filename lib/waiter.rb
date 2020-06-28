class Waiter

    attr_accessor :name, :yrs_experience
  
    @@all = []
  
    def initialize(name, yrs_experience)
      @name = name
      @yrs_experience = yrs_experience
      @@all << self
    end
  
    def self.all
      @@all
    end
   # After building customer and the relationship between meal and customer...
   # This time, we will build out methods so a waiter can find the customer that tips the the best.

   def meals
    Meal.all.select do |meal|
        meal.waiter == self #checking for waiter
    end
   end

   def new_meal(customer, total, tip=0)
    Meal.new(self, customer, total, tip) #bridge between meal and waiter, see customer.rb for that relationship
   end

    #to find the best tipper 
    def best_tipper
        meals.max_by { |meal| meal.tip }.customer   #max_by only stores into new array the max then apply .customer on new array   
    end
    

  end