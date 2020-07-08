class Photographer
    
    attr_accessor :pic_taker, :pic_taker_url, :orig_url, :input
    
    @@all = []

    def initialize(pic_taker,pic_taker_url,orig_url)
        @pic_taker = pic_taker
        @pic_taker_url = pic_taker_url
        @orig_url = orig_url
        @@all << self
    end

    def self.all
        @@all
    end
  
    def self.pic_taker_array
        @@all.map.with_index(1) do |id,i|
            id.pic_taker
            puts "#{i}. #{id.pic_taker}"
            break if i > 49 
        end
    end

    def self.search_pic_taker_array
        pic_taker_array
        j=gets.strip.to_i
        j-=1
        pp @@all[j]
        
    end

    def self.sample_pic_taker
        pp @@all.sample
    end
    
end

