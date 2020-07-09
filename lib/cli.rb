class CLI  
    attr_accessor :input

    def initialize
        @input = ""
    end

    def line
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    end
    def start
        line
        puts "           Welcome to Pictures!!"
        line
        
        new_api = API.new
        new_api.get_api

        menu
        user_interface
    end

    def menu
        puts "         Please choose an option"
        line     
        puts " To View a List of Photographer User Names"
        puts "                Enter '1'"       
        puts "Please Enter # Beside User Name to Search By"
        line
        puts "  To View a Random Photographer Enter '2'"
        line
        puts "               '3' for Quit"
        line
    end

    def get_input
        self.input = gets.chomp.to_i
    end

    def user_interface
        #binding.pry
        while !(input.to_i.between?(1,3))
            self.get_input    
            if input.to_i == 3
                exit!    
            elsif input.to_i == 1
                Photographer.search_pic_taker_array
                menu             
            elsif input.to_i == 2
                Photographer.sample_pic_taker
                menu
            else
                validator     
            end
        end
   
    end

    def validator
        line    
        puts "      INVALID INPUT!!!   TRY AGAIN!!!"
        line
        menu
        user_interface
    end

    # def numb_validator
    #     while !(input.to_i.between?(1,20))
    #         line    
    #         puts "      INVALID INPUT!!!   TRY AGAIN!!!"
    #         line
    #     end
    # end 

end

