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

    def continue
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "    Type 'C' to Continue 'Q' to Quit"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        while(input.upcase != "Q")
            self.get_input    
            if input.upcase == "Q"
                exit!
            elsif input.upcase == "C"
                menu
            end
            continue 
        end
    end

    

    def user_interface
        
        while(input.upcase != "Q")
        self.get_input    
            if input.upcase == "Q"
                exit!    
 
            elsif input.upcase == "P"
                Photographer.search_photographer_array
                continue
                              
            elsif input.upcase == "R"
                Photographer.sample_photographer
                continue
            

            else
                continue  

            end
     
        end
   
    end

    
end

