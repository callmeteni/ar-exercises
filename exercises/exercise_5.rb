require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

total_revenue = Store.sum(:annual_revenue)
puts "Total Company Revenue: $#{total_revenue}"

average_revenue = Store.average(:annual_revenue)
puts "Average Annual Revenue for All Stores: $#{average_revenue}"

high_revenue_stores = Store.where("annual_revenue >= ?", 1000000).size
puts "Number of Stores Generating $1M or More: #{high_revenue_stores}"
