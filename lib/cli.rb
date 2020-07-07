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
        puts "If You Wish to Search by Id Please View IDs"
        puts "To View a List of Photographer IDs Enter 'I'"
        puts "Please Enter ID to Search By"
        puts ""        
        puts "If You Wish to Search by Photographer User Name Please View User Names"
        puts "To View a List of Photographer User Names Enter 'P'"
        puts "Please Enter User Name to Search By"
        puts ""
        puts "Please Enter 'Q' for Quit"
    end

    def get_input
        self.input = gets.strip
    end

    def user_interface
        
        # self.get_input
        while(input.upcase != "Q")
            self.get_input
            if input.upcase == "Q"
                exit!
                
            elsif input.upcase == "I" 
                Photographer.id_array
                # binding.pry
            elsif input == "/\d{7}?[^a-z]\S[^A-Z]/"
                Photographer.search_id_array(input)

            elsif input.upcase == "P"
                # binding.pry 
                Photographer.photographer_array

            elsif input == "/./"
                Photographer.search_photographer_array(input)
                              
            # elsif input.upcase == "/[^ILQP]/g"
            #     puts "INVALID ENTRY"

            else
                welcome

            end
     
        end


    

        
    
        
    end

end

