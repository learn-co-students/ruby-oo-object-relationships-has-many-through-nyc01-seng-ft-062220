class Waiter

    attr_accessor :name, :xp

    @@all = []

    def initialize(name, xp)
        @name = name
        @xp = xp
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select {|meal_inst| meal_inst.waiter == self}
    end

    def best_tipper
     Meal.all.sort_by {|meal_inst, tip| meal_inst.tip}.last.customer
     
    end
end