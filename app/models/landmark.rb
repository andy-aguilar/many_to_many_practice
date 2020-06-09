# put your Landmark model here
class Landmark
    attr_reader :name, :city

    @@all = []

    def initialize (name, city)
        @name = name
        @city = city
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.find_by_city(city)
        self.all.select do |landmark|
            landmark.city == city
        end
    end

    def trips
        #looking through trip.all to select any trips whose landmark is self
        Trip.all.select {|trip| trip.landmark == self}
    end 

    def tourists
        #runs self.trips and gives us just the tourists
        self.trips.map do |trip| 
            trip.tourist
        end
    end
    
end