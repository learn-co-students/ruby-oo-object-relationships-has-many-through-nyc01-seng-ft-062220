class Waiter
    attr_accessor :name, :yrs_experience, :customer
    @@all = []

    def initialize (name, years)
        @name = name
        @yrs_experience = years
        @@all << self
    end
    def self.all
        @@all
    end

    def new_meal(customer,total,tip=0)
        Meal.new(self,customer,total,tip)
    end

    def meals
        Meal.all.select {|i| i.waiter == self}
    end

    def customers
        self.meals.map {|i| i.customer}
    end

    def best_tipper
        
        self.meals.max_by {|i| i.tip}.customer
    end




end