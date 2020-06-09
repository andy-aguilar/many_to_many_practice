# put your Tourist model here
class Tourist
    attr_reader :name

    @@all = []

    def initialize (name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.find do |tourist|
            tourist.name == name
        end
    end

    def trips
        #looking through trip.all
        #looking through trip.all to select any trips taken by self
        Trip.all.select {|trip| trip.tourist == self}
    end 

    def landmarks
        #runs self.trips and gives us just the landmarks
        self.trips.map do |trip| 
        trip.landmark
        end
    end

    def visit_landmark(landmark)
        Trip.new(self, landmark)
    end


    def never_visited
        #search through landmarks to find landmarks that are not in self.landmarks
        #go through landmarks.all and compare with self.landmarks
        Landmark.all.select do |landmark|
            !self.landmarks.include?(landmark)
        end
    end
    
end

