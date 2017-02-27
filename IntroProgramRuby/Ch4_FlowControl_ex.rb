#Flow Control exercises
#conditional.rb
puts "Put in a number"
a = gets.chomp.to_i

if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else
  puts "a is neither 3, nor 4"
end

#case_statement.rb
a = 5

answer = case a
  when 5
    "a is 5"
  when 6
    "a is 6"
  else
    "a is neither 5, nor 6"
  end

puts answer

#Q2
def upper(s)
    if s.length > 10
        s.upcase
    else
        s
    end
end

puts upper('hello world')

#Q3
puts "Give a number between 0 and 100"
num = gets.chomp.to_i
while num < 0
    puts "Can\'t enter a negative number. Please enter a positive number"
    num = gets.chomp.to_i
end
if num <= 50
    puts "#{num} is between 0 and 50"
elsif num <= 100
    puts "#{num} is between 51 and 100"
else
    puts "#{num} is greater than 100"
end

#Q5 #case statements
def num_range_1(num)
  num = num.to_i
  while num < 0
    puts "Can\'t enter a negative number. Please enter a positive number"
    num = gets.chomp.to_i
  end
  if num <= 50
    puts "#{num} is between 0 and 50"
  elsif num <= 100
    puts "#{num} is between 51 and 100"
  else
    puts "#{num} is greater than 100"
  end
end 

puts num_range_1(-2)



def num_range_2(num)
  case num.to_i
  when num < 0
    puts "Can\'t enter a negative number. Please enter a positive number"
    num = gets.chomp.to_i
  end
  if num <= 50
    puts "#{num} is between 0 and 50"
  elsif num <= 100
    puts "#{num} is between 51 and 100"
  else
    puts "#{num} is greater than 100"
  end
end

puts num_range_2(130)

#Q6
  def equal_to_four(x)
    if x == 4
      puts "yup"
    else
      puts "nope"
    end
  end

puts equal_to_four(5)
        

