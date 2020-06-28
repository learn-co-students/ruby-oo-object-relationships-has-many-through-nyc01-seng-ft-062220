class Meal

    attr_accessor :total, :tip
    attr_reader :waiter, :customer

    @@all = []
             
    def initialize(waiter, customer, total, tip)
        @total = total
        @customer = customer
        @waiter = waiter
        @tip = tip
        @@all << self
    end

    def id_gen
        @id += 0001
    end

    def self.all
        @@all
    end

end

