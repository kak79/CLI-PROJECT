class Photographer
    
    attr_accessor :id, :photographer, :photographer_url, :original
    
    @@all = []
    @ids = []
    @photographers = []
    @photographer_urls = []
    @orig_photos = []

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

    def self.make_id_array
        @ids.each do |id|
            @ids << id
        end
        @ids
    end

    def self.search_by_id
        @@all.select do |hash| 
            hash["id"] == input
                   
        end
    end
  
    def self.make_photographer_array
        @photographers.each do |photographer|
            @photographers << photographer
        end
        @photographers
    end
    



end

