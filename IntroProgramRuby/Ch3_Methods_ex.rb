#Methods Exercises
#Demo Exercises
a = [1, 2, 3]

def no_mutate(array)
  array.last
end

p "Before no_mutate method: #{a}"
no_mutate(a)
p "After no_mutate method: #{a}"

def add_three(number)
  return number + 3
  number + 4 #since return came in the previous line, execution stopped at the previous step
end

returned_value = add_three(4)
puts returned_value #returns value of 7

#vs 
def add_three(number)
  number + 3
  number + 4 
end

returned_value = add_three(4)
puts returned_value #returns value of 8

################EXERCISES#################
#Q1
def greeting(name)
  "Good Morning #{name}!"
end

puts greeting('Aksheetha')

#Q3
def multiply(a, b)
  a.to_i * b.to_i
end

puts multiply(4, 3)

#Q5
def scream(words)
  words = words + "!!!!"
  return words #need to add return in order to return the words value
  puts words
end

puts scream("Yippeee") #addings a puts to get the output