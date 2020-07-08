class Photographer
    
    attr_accessor :photographer, :photographer_url, :original, :input
    
    @@all = []

    def initialize(photographer,photographer_url,original)
        @photographer = photographer
        @photographer_url = photographer_url
        @original = original
        @@all << self
    end

    def self.all
        @@all
    end
  
    def self.photographer_array
        @@all.map.with_index(1) do |id,i|
            id.photographer
            puts "#{i}. #{id.photographer}"
            break if i > 49 
        end
    end

    def self.search_photographer_array
        photographer_array
        j=gets.strip.to_i
        j-=1
        pp @@all[j]
        
    end

    def self.sample_photographer
        pp @@all.sample
    end
    
end

