#Array Exercises
#Q1
arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.include?(number)
  puts "#{number} is in the array"
else 
  puts "#{number} is not in the array"
end

#Q2
arr = ["b", "a"]
arr = arr.product(Array(1..3))
puts arr.first.delete(arr.first.last) #removes element 1


arr = ["b", "a"]
arr = arr.product([Array(1..3)])
puts arr.first.delete(arr.first.last) #removes array [1, 2, 3]

#Q3
arr = [["test", "hello", "world"],["example", "mem"]]
puts arr.last.first

#Q6
names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'
puts names

#Q7
array = [2, 4, 6, 8, 10]
arr = []
array.each do |x|
  arr << x + 2
end
p array
p arr
