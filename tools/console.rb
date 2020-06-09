require_relative '../config/environment.rb'

# create your variables and/or write any tests here

luis = Tourist.new("Luis")
andy = Tourist.new("Andy")

puts "\n\n\n------------Tourist.all array---------------\n\n\n"

print Tourist.all

puts "\n\n\n------------Tourist.find_by_name---------------\n\n\n"

print Tourist.find_by_name ("Luis")

#binding.pry
