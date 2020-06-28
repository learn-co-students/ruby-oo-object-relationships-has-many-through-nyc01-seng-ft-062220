class Customer

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def name #getter
        @name 
    end

    def name=(name)
        @name = name
    end

    def age
        @age
    end

    def new_meal(waiter, total, tip)
        Meal.new(waiter, self, total, tip) #?let's prepend self in front later to test
    end

    def meals
        Meal.all.select {|meal_inst| meal_inst.customer == self }
    end

    def waiters
        meals.collect { |self_meal_inst| self_meal_inst.waiter }   
    end


    def self.all
        @@all
    end
  
end