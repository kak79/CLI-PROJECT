class CLI  


    def welcome
        puts "Welcome to Pictures"
        puts "Please choose an option"
        puts "next pic n"
        puts "previous pic p"
        puts "random pic r"
        puts "quit q"
    end


    def user_interface   #enter numbers,enter symbols,enter empty string
         
        until input == "q"

            if input == "n"
                puts "next pic"
            elsif input == "p"
                puts "previous pic"
            elsif input == "r"    
                puts "random pic"
            elsif input == "/.[^nNpPqQrR]/"
                puts "invalid input"
            else

                welcome 

            end

        end
    
        
    end

end
