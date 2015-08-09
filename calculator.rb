# Check README.md for pseudo code

require 'pry'

def questions(str)
  puts "***** Please input #{str} integer *****"
end

def answer(str)
  puts "Result is #{str}"
end

loop do
  puts "Do you want to do some simple calculation? (y/n)"
  answer = gets.chomp
  if answer.downcase == 'y'
    questions("first")
    number1 = gets.chomp
    questions("second")
    number2 = gets.chomp
    loop do
      puts "Choose operator: a) Add  b) Subtract  c) multiple  d) divide"
      operator = gets.chomp
      result = case operator.downcase
        when 'a' then number1.to_i + number2.to_i
        when 'b' then number1.to_i - number2.to_i
        when 'c' then number1.to_i * number2.to_i
        when 'd' then number1.to_f / number2.to_f
        else
          puts "Wrong INPUT! Try again!"
          next          
        end
      break answer(result)
    end
  elsif answer.downcase == 'n'
    break
  end
end
