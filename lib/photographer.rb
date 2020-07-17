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

    def self.pic_taker_array
        @@all.each.with_index(1) do |photographer,i|
            puts "#{i}. #{photographer.pic_taker}" 
        end
    end

    def self.search_pic_taker_array(input2)
        photographer=@@all[input2]
        photographer.display
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

    def hello
        puts "hello"

    end

end

