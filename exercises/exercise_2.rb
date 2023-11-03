require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Load the first store (with id = 1) and assign it to @store1
@store1 = Store.find(1)

# Load the second store and assign it to @store2
@store2 = Store.find(2)

# Update the first store's instance (e.g., change its name)
@store1.update(name: 'Updated Store Name')

# Alternatively, you can also update its name using direct assignment
# Example:
# @store1.name = 'Updated Store Name'
# @store1.save


