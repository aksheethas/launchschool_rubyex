#More Stuff Exercises
#Q1
def string_check(word)
  if /lab/ =~ word
    puts word
  else
    puts 'match not found!'
  end
end

puts string_check('laboratory')
puts string_check('experiment')
puts string_check("Pans Labyrinth")
puts string_check("elaborate")
puts string_check("polar bear")

#Q4
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

