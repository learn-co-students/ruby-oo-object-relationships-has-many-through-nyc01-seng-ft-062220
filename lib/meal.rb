class Meal

    @@all = []
    attr_accessor :total, :tip, :customer, :waiter

    def initialize(waiter, customer, total, tip)
        @waiter = waiter
        @customer = customer
        @total = total
        @tip = tip
        Meal.all << self
    end

    def self.all
        @@all
    end

end