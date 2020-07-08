class CLI  
    attr_accessor :input

    def initialize
        @input = ""
    end

    def start
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "           Welcome to Pictures!!"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        
        new_api = API.new
        new_api.get_api

        menu
        user_interface
    end

    def menu
        puts "         Please choose an option"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts ""        
        puts " To View a List of Photographer User Names"
        puts "                Enter 'P'"       
        puts "Please Enter # Beside User Name to Search By"
        puts ""
        puts "  To View a Random Photographer Enter 'R'"
        puts "       Please Enter 'Q' for Quit"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    end

    def get_input
        self.input = gets.strip
    end

    def user_interface
        
        while(input.upcase != "Q")
        self.get_input    
            if input.upcase == "Q"
                exit!    
 
            elsif input.upcase == "P"
                Photographer.search_pic_taker_array
                menu
                              
            elsif input.upcase == "R"
                Photographer.sample_pic_taker
                menu
            elsif input.upcase == "C"
                menu

            else
                user_interface 

            end
     
        end
   
    end

    
end

