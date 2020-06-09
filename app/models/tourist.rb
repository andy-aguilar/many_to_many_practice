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
    
end

