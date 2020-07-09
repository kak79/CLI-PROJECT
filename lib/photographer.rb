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

    def self.numb_var 
        numb=gets.strip.to_i - 1
    end

    def self.search_pic_taker_array
        i=0
        @@all.select do |numb|
            i += 1
            puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            puts  "#{numb.pic_taker}"
            puts  "#{numb.pic_taker_url}"
            puts  "#{numb.orig_url}"
            puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"         
            break if i > 0
        end
    end

    def display
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts  "#{pic_taker}"
        puts  "#{pic_taker_url}"
        puts  "#{orig_url}"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    end    

    def self.sample_pic_taker
        pic = @@all.sample
        pic.display
    end

end

