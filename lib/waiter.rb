class Waiter

    attr_accessor :name, :years

    @@all = []

    def initialize(name, years)
        @name = name
        @years = years
        Waiter.all << self
    end

    def self.all
        @@all
    end

    def new_meal(customer, total, tip)
        meal = Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select do |element|
            element.waiter == self
        end
    end

    def best_tipper
        highest_tip = Meal.all[0].tip
        highest_tipper = Meal.all[0].customer

        Meal.all.each do |element|
            if element.tip > highest_tip
                highest_tip = element.tip
                highest_tipper = element.customer
            end
        end

        highest_tipper

    end

end