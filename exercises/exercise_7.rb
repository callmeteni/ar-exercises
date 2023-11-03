require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative '../lib/store'

puts "Exercise 7"
puts "----------"

# This is a script that can be executed to perform the steps
# Assume you are running this script from the Rails console.

# Step 1: Include the Store model

# Step 2: Ask the user for a store name
print "Enter a store name: "
store_name = gets.chomp

print "Enter the annual revenue (a number): "
annual_revenue = gets.chomp.to_i

# Step 3: Attempt to create a store with the inputted name
# Leave out other fields to trigger validation errors

new_store = Store.new(name: store_name, annual_revenue: annual_revenue.to_i)

# Step 4: Attempt to save/create the record and display error messages
if new_store.save
  puts "Store created successfully!"
else
  puts "Failed to create the store due to the following errors:"
  new_store.errors.full_messages.each do |error|
    puts error
  end
end
