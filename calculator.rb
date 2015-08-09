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
      if operator.downcase == 'a'
        result = number1.to_i + number2.to_i
        answer(result)
        break
      elsif operator.downcase == 'b'
        result = number1.to_i - number2.to_i
        answer(result)
        break
      elsif operator.downcase == 'c'
        result = number1.to_i * number2.to_i
        answer(result)
        break
      elsif operator.downcase == 'd'
        result = number1.to_f / number2.to_f
        answer(result)
        break
      else
        puts "Wrong INPUT! Try again!"          
      end
    end

  elsif answer.downcase == 'n'
    break      
  end
end
