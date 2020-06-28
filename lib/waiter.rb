class Waiter

    @@all = []

    def initialize(name, xp)
        @name = name
        @xp = xp
        @@all << self
    end

    def name # getter
        @name
    end

    def name=(name) #name ##? does setter need args to work?
        @name = name
    end

    def xp
        @xp
    end

    def xp=(xp)
        @xp = xp
    end

    def self.all
        @@all
    end
    #helper method: waiter's serving history
    def meals
        Meal.all.select {|meal_inst| meal_inst.waiter == self } #all the self waiter's meals
    end

    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
    end

    def best_tipper
        meals.max_by { |meal_inst| meal_inst.tip }.customer
    end

end

# experimenting with building a hash_map of customer's total tips for instance of waiter to calculating the biggest overall tipper.
# TODO - study/practice ruby's '.inject' method to refactor the below logic

 #helper method: tabulating customer's total tips given waiter's serving history
#  def total_tips_received_by_customer
#     hash_output = Hash.new(0)
#     meals.each do |this_waiter_meal|
#         if hash_output[this_waiter_meal.customer.name]
#             hash_output[this_waiter_meal.customer.name] += this_waiter_meal.tip
#         else
#             hash_output[this_waiter_meal.customer.name] = this_waiter_meal.tip
#         end
#     end
#     #meals.max_by { |x| "key" => max (x.tip }
#     hash_output
# end
# def best_tipper
#     total_tips_received_by_customer.sort_by { |k,v| v}.last[0]
#     #?total_tips_received_by_customer.select P
# end
