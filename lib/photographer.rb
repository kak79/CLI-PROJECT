class Photographer
    
    attr_accessor :pic_taker, :pic_taker_url, :orig_url, :input
    
    @@all = []

    def initialize(attr_hash)
        attr_hash.each do |key, value|
            self.send("#{key}=", value)
        end
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.sample_pic_taker
        all.sample
    end

end

