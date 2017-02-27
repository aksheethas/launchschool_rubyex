#Intro to Programming
#Basics Exercises
#Q1
puts 'Aksheetha' + ' ' + 'Sridhar'

#Q2
thousand = 1234/1000
hundred = 1234%1000/100
ten = 1234%1000%100/10
one = 1234%1000%100%10

puts thousand
puts hundred
puts ten
puts one

#Q3
movies = {:jaws => 1975, :anchorman => 2004, :man_of_steel => 2013, :a_beautiful_mind => 2001, :the_evil_dead => 1981}
puts movies.values

#Q4
array = [1975, 2004, 2013, 2001, 1981]
array.each { |x| puts x }

#Q5
def factorial(num)
  if num == 0
    1
  else
    num * factorial(num - 1)
  end
end

puts factorial(5)
puts factorial(6)
puts factorial(7)
puts factorial(8)

#Q6
def square(num)
  num = num.to_f
  num * num
end

puts (square(4))
puts square(5)
puts square(6.2)

#Q7
#opening bracket without a closing bracket
