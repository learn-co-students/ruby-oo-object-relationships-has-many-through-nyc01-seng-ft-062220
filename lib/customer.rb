class Customer

    attr_accessor :name, :age

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(waiter, total, tip)
        Meal.new(waiter, self, total, tip)
    end

    def meals
        Meal.all.select {|meal_inst| meal_inst.customer.name == self.name}
    end

    def waiters
        Meal.all.map {|meal_inst| meal_inst.waiter if meal_inst.customer == self}.compact
    end
  
end
