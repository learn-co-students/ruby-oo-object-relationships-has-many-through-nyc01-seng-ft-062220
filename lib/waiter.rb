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

    def new_meal(customer, total, tip)
        Meal.new(customer, self, total, tip)
    end

    def meals
        Meal.all.select {|meal| meal.waiter == self}
    end

    def best_tipper
        most_tip = 0
        best_tipper = nil
        meals.map do |meal|
            if meal.tip > most_tip
                most_tip = meal.tip
                best_tipper = meal.customer
            end
        end
        best_tipper
    end

end