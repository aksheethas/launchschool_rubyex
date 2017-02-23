#Chapter 3 Exercises
#Full name greeting
puts "What\'s your first name?"
first_name = gets.chomp
puts "What\'s your middle name?"
middle_name = gets.chomp
puts "What\'s your last name?"
last_name = gets.chomp
puts 'Hello, ' + first_name + ' ' + middle_name + ' ' + last_name + '!'

#bigger and better number
puts "What is your favorite number?"
number_fav = gets.chomp.to_i
better_num = number_fav + 1
puts 'A bigger and better favorite number is ' + better_num.to_s + '!'