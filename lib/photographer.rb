class Photographer
    
    attr_accessor :id, :photographer, :photographer_url, :original
    
    @@all = []
    @@photographers = []
    # @photographer_urls = []
    # @orig_photos = []

    def initialize(id,photographer,photographer_url,original)
        @id = id
        @photographer = photographer
        @photographer_url = photographer_url
        @original = original
    end
    
    def self.make_photographer_array
        @@photographers.each do |photographer|
            @@photographers << photographer
        end
        @@photographers
    end
    
    def self.search_by_id(id)
        
        @@all.? do |id| 
            #return id,photographer,photographer_url,original in readable format
            
        end
    end
  
    



end

