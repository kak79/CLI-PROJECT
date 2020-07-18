class CLI  
    attr_accessor :input, :input2

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
        self.get_input    
        if input.to_i == 3
            exit!    
        elsif input.to_i == 1
            line
            glue
            menu 
            user_interface            
        elsif input.to_i == 2
            pic = Photographer.sample_pic_taker
            display(pic)
            menu
            user_interface
        elsif
            validator 
        else 
            user_interface        
        end
        user_interface
    end

    def validator
        line    
        puts "      INVALID INPUT!!!   TRY AGAIN!!!"
        line
        menu
        user_interface
    end

    def imput2_validator
        while !(input2.to_i.between?(1,20))
            line    
            puts "      INVALID INPUT!!!   TRY AGAIN!!!"
            line
            pic_taker_array
            line
            puts "       Please enter valid input:"
            line
            input2_var
        end
    end

    def input2_var 
        self.input2=gets.strip.to_i - 1
    end

    def glue
        pic_taker_array
        input2_var
        imput2_validator
        photographer=Photographer.all[input2]
        display(photographer)
    end
   
    def pic_taker_array
        Photographer.all.each.with_index(1) do |photographer,i|
            puts "#{i}. #{photographer.pic_taker}" 
        end
    end

    def display(photographer)
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts  "#{photographer.pic_taker}"
        puts  "#{photographer.pic_taker_url}"
        puts  "#{photographer.orig_url}"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    end    

end