require_relative '../config/environment.rb'

# create your variables and/or write any tests here

luis = Tourist.new("Luis")
andy = Tourist.new("Andy")

puts "\n\n\n------------Tourist.all array---------------\n\n\n"

print Tourist.all

puts "\n\n\n------------Tourist.find_by_name---------------\n\n\n"

print Tourist.find_by_name ("Luis")

met = Landmark.new("Met Museum", "NYC")
liberty = Landmark.new("Statue of Liberty", "NYC")
sm = Landmark.new("Santa Monica Beach", "LA")
eiffel = Landmark.new("Eiffel Tour", "Paris")

puts "\n\n\n------------Landmark.all---------------\n\n\n"
print Landmark.all 

puts "\n\n\n------------Landmark.find_by_city---------------\n\n\n"
print Landmark.find_by_city("NYC")

luis_met = Trip.new(luis, met)
andy_sm = Trip.new(andy, sm)
luis_sm = Trip.new(luis, sm)
# andy_liberty = Trip.new(andy, liberty)

puts "\n\n\n------------Trip.all---------------\n\n\n"
print Trip.all

puts "\n\n\n------------Trip.tourist---------------\n\n\n"
print luis_met.tourist

puts "\n\n\n------------Trip.landmark---------------\n\n\n"
print andy_sm.landmark == sm

puts "\n\n\n------------tourist.trips---------------\n\n\n"
puts luis.trips.include?(luis_sm)
#puts !luis.trips.include?(andy_liberty)

puts "\n\n\n------------tourist.landmarks---------------\n\n\n"
print andy.landmarks.include?(sm)

puts "\n\n\n------------tourist.vist_landmark---------------\n\n\n"
andy_liberty = andy.visit_landmark(liberty)
#andy_eifel = andy.visit_landmark("eifel")
print andy.trips

puts "\n\n\n------------tourist.never_visited---------------\n\n\n"
print luis.never_visited


puts "\n\n\n------------landmark.trips---------------\n\n\n"
print sm.trips

puts "\n\n\n------------landmark.tourists---------------\n\n\n"
print sm.tourists



puts "\n"
puts "\n"

binding.pry
