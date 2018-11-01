#menu
#create empty array
#ask user for array input
#take input and add to array
#find a way to sort the array without using helpers
#Then find a way to pull the first and last index of that array

@user_array = []

def array_numbers  
    puts '......................................'
    puts 'Please add a number into the array.'
    @user_numbers = gets.to_i
    @user_array << @user_numbers
    puts 'The number has been added to the array'
    puts '......................................'
    user_selection
end

def highest
    puts @user_array.max   
end

def lowest
    puts @user_array.min
end


def user_selection
    puts 'What would you like to do?
    1) Add number to array?
    2) See highest number in array?
    3) See lowest number in array?
    4) Show whole array?
    5) Exit'
    choice = gets.to_i
    case choice
        when 1
            array_numbers
        when 2
            puts '......................................'
            puts "Highest number in array is "
            highest
            puts '......................................'
            user_selection
        when 3
            puts '......................................'
            puts "Lowest number in array is "
            lowest
            puts '......................................'
            user_selection
        when 4
            puts '......................................'
            puts "Here is your list of numbers"
            puts @user_array
            puts '......................................'
            user_selection
        when 5
            exit
    else
        puts "Invalid Choice, please choose again"
        user_selection
    end
end


user_selection