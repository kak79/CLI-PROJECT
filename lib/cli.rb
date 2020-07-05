class CLI  


    def welcome
        puts "Welcome to Pictures"
        puts "Please choose an option"
        puts "To Search by Photographer ID enter 'I'"
        puts "To Search by Photographer User Name enter 'U'"
        puts "To View Random Photographer enter 'R'"
        puts "To View a List of Photographers enter 'L'"
        puts "enter 'P' for previous page in the List"
        puts "enter 'N' for next page in the List"
        puts "Please enter 'Q' for quit"
    end

    def input
        input = gets.chomp
    end

    def user_interface   
    
        while(input != "q".upcase)

            if input == "q".upcase
                exit!
            
            elsif input == "i".upcase
                
            end
            
        end


    

        
    
        
    end

end

