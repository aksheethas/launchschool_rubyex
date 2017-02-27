#Loops & Iterators Exercises
#Q1
x = [1, 2, 3, 4, 5]
x.each do |a|
  x = a + 1 #prints last element of array + 1
end

puts x #returns 6

#Q2
word = ''
while word != 'STOP'
    puts 'How is today?'
    word = gets.chomp.to_s
    puts 'Want to continue? If not enter STOP'
    word = gets.chomp.to_s
end

#Q3
array = [2, 4, 6, 8, 10]
array.each_with_index do |val, ind|
    puts "#{ind} #{val}"
end

#Q4 #using recursion
def zero_count(num)
    if num <= 0
        puts num
    else
        puts num
        zero_count(num - 1)
    end
end

puts zero_count(10)

