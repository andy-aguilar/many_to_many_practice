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
    
end