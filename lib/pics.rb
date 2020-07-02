class Pic
    attr_accessor :title, :height, :width, :photo_thumb, :photo_orig, :photo_big
    attr_reader :photo_id, :photo_src, :photographer, :photographer_url, :photographer_id

    @@all = []

    def initialize(title)
        @title = title

    end

    def self.all_pics
        pics = self.new(title)
        @@all << self
    end
    
    
end