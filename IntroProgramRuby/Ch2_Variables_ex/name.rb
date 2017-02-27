#name.rb
puts "Type your first name: "
name = gets.chomp
puts "Hello #{name}!"

10.times {print "#{name} "}

puts "What is your first name?"
first = gets.chomp
puts "What is your last name?"
last = gets.chomp
puts "#{first}" + ' ' + "#{last}"
