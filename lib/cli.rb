class CLI  
    attr_accessor :input

    def welcome
        puts "Welcome to Pictures"
        puts "Please choose an option"
        puts "To View a List of Photographer IDs Enter 'I'"
        puts "To View a List of Photographer User Names Enter 'U'"
        puts "To View Random Photographers Enter 'R'"
        puts "To View a List of Photographers Enter 'L'"
        puts "Please Enter 'Q' for Quit"
    end

    def get_input
        self.input = gets.strip
    end

    def user_interface 

        welcome
        self.get_input
        while(input.upcase != "Q")

            if input.upcase == "Q"
                exit!
                
            elsif input.upcase == "I"
                
                Photographer.search_by_id 

            # elsif input.upcase == "U"
            #     Photographer.search_by_photographer
                
            # elsif input.upcase == "R"
            #     Photographer.view_random
                
            # elsif input.upcase == "L"
            #     Photographer.view_list
                
            # elsif input.upcase == "/[^ILQRU]/g"
            #     puts "INVALID ENTRY"

            else
                welcome

            end
     
        end


    

        
    
        
    end

end

