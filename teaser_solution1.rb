require 'pry'

def input
  puts "Please enter a series of numbers"
  @user_numbers = gets.split(' ').map { |x| x.to_i }
  # @user_numbers = gets.split(' ').map(&:to_i)
  puts "1) Highest Value or 2) Lowest Value"
  choice = gets.strip
  if choice === '1'
    highest
  elsif choice === '2'
    lowest
  else
    puts 'Please Select Valid Option'
    input
  end
end

def highest
  prev_num = @user_numbers[0]
  @user_numbers.each do |next_num|
    if next_num > prev_num
      prev_num = next_num
    end
  end
  puts "The highest number is #{prev_num}"
  @user_numbers.clear
end

def lowest
  prev_num = @user_numbers[0]
  @user_numbers.each do |next_num|
    if next_num < prev_num
      prev_num = next_num
    end
  end
  puts "The lowest number is #{prev_num}"
  @user_numbers.clear
end

while true
  input
end