class Photographer
    
    attr_accessor :pic_taker, :pic_taker_url, :orig_url
    
    @@all = []

    def initialize(attr_hash)
        @pic_taker = attr_hash[:pic_taker]
        @pic_taker_url = attr_hash[:pic_taker_url]
        @orig_url = attr_hash[:orig_url]
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.pic_taker_array
        @@all.map.with_index(1) do |id,i|
            id.pic_taker
            puts "#{i}. #{id.pic_taker}"
            break if i > 19 
        end
    end
    
    def self.search_pic_taker_array
        pic_taker_array
        numb=gets.strip.to_i - 1
        i=0
        @@all.select do |numb|
            i += 1
            CLI.line
            puts  "#{numb.pic_taker}"
            puts  "#{numb.pic_taker_url}"
            puts  "#{numb.orig_url}"
            CLI.line           
            break if i > 0
        end
    end

    def display
        CLI.line
        puts  "#{pic_taker}"
        puts  "#{pic_taker_url}"
        puts  "#{orig_url}"
        CLI.line
    end    

    def self.sample_pic_taker
        pic = @@all.sample
        pic.display
    end

end

