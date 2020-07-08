class Photographer
    
    attr_accessor :id, :photographer, :photographer_url, :original, :input
    
    @@all = []

    def initialize(id,photographer,photographer_url,original)
        @id = id
        @photographer = photographer
        @photographer_url = photographer_url
        @original = original
        @@all << self
    end

    def self.all
        @@all
    end

    def self.id_array
        @@all.map.with_index(1) do |photographer,i|
            photographer.id
            puts "#{i}. #{photographer.id}"
            break if i > 49 
        end
    end

    def self.search_id_array(input)
        i=input-1
        @@all[i]
    end    
  
    def self.photographer_array
        @@all.map.with_index(1) do |id,j|
            id.photographer
            puts "#{j}. #{id.photographer}"
            break if j > 49 
        end
    end

    def self.search_photographer_array(input)
        j=input-1
        @@all[j]
    end
    
end

