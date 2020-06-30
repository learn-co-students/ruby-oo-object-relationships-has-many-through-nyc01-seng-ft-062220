require 'pry'
class Customer
    attr_accessor :name, :age
    @@all = []

    def initialize(name, age)
        @name=name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(waiter, total, tip=0) #same method in
        Meal.new(waiter, self, total, tip) #insert same parameters as meal initialized
    end

    def meals
        Meal.all.select do |meal| #applying customer to each meal object
            meal.customer == self #rachel.meals returns all her meals
        end
    end

    def waiters
        meals.map do |meal| #applied meals method above and retrieves all 
            meal.waiter     # rachel.waiters => rachel's waiters
        end
    end



end