class Photographer
    
    attr_accessor :id_num, :photographer, :photographer_url, :orig_photo
    
    @@all = []

    def initialize(id_num,photographer,photographer_url,orig_photo)
        @id_num = id_num
        @photographer = photographer
        @photographer_url = photographer_url
        @orig_photo = orig_photo
        @@all << self
    end

    def self.all
        @@all
    end

    
    
    
end


