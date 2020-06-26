class Customer
  
    attr_accessor :name, :age

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        Customer.all << self
    end

    def self.all
        @@all
    end

    def new_meal(waiter, total, tip)
        meal = Meal.new(waiter, self, total, tip)
    end

    def meals
        Meal.all.select do |element|
            element.customer == self
        end
    end

    def waiters
        self.meals.map {|element| element.waiter}
    end

end