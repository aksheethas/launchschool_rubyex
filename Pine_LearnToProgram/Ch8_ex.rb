#Chapter 8 Exercises
# #sort array
puts "Type a list of words, one on each line. When done press enter on an empty line"
array = []
input = ' '
while input != ''
  input = gets.chomp
  array.push input
end

puts
puts array.sort

#Table of contents revisited
title = 'Table of Contents'
chapters = [['Getting Started', 1], ['Numbers', 9], ['Letters', 13]]

puts title.center(50)
puts #blank line

counter = 1
chapters.each do |item|
  title = item[0]
  page = item[1]
  
  start = 'Chapter ' + counter.to_s + ': ' + title
  finish = 'page ' + page.to_s
  
  puts start.ljust(30) + finish.rjust(30)
  
  counter += 1
end
  