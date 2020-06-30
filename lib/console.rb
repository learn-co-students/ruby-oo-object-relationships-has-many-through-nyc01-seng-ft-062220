require 'pry'
require_relative './customer.rb'
require_relative './meal.rb'
require_relative './waiter.rb'

sam = Customer.new("Sam", 27)
pat = Waiter.new("Pat", 2)
alex = Waiter.new("Alex", 5)
 
sam.new_meal(pat, 50, 10) # A Customer creates a Meal, passing in a Waiter instance
sam.new_meal(alex, 20, 3) # A Customer creates a Meal, passing in a Waiter instance
pat.new_meal(sam, 30, 5) # A Waiter creates a Meal, passing in a Customer instance

alex = Customer.new("Alex", 30)
rachel = Customer.new("Rachel", 27)
dan = Waiter.new("Dan", 3)
 
rachel.new_meal(dan, 50, 10)
alex.new_meal(dan, 30, 5)
rachel.meals

terrance = Customer.new("Terrance", 27)
jason = Waiter.new("Jason", 4)
andrew = Waiter.new("Andrew", 7)
yomi = Waiter.new("Yomi", 10)
 
terrance.new_meal(jason, 50, 6)
terrance.new_meal(andrew, 60, 8)
terrance.new_meal(yomi, 30, 4)
 
terrance.waiters #=> [#<Waiter:0x00007fa23f18f860 @name="Jason", @yrs_experience=34>, #<Waiter:0x00007fa23f196818 @name="Andrew", @yrs_experience=27>, #<Waiter:0x00007fa23f19dd20 @name="Yomi", @yrs_experience=20>] 
terrance.waiters.length #=> 3
jason = Waiter.new("Jason", 4)
lisa = Customer.new("Lisa", 24)
tim = Customer.new("Tim", 35)
terrance = Customer.new("Terrance", 27)
 
terrance.new_meal(jason, 50, 3)
lisa.new_meal(jason, 40, 10)
tim.new_meal(jason, 45, 8)
 
jason.best_tipper #=> #<Customer:0x00007f80829959a8 @name="Lisa", @age=24>
jason.best_tipper.name #=> "Lisa"

#binding.pry