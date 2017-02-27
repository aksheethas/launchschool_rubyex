#Chapter 10 Exercises

#Rite of Passage Sorting
def sort(arr)
  rec_sort arr, []
end

def rec_sort (unsorted, sorted)
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |tested_object|
    if tested_object < smallest
      still_unsorted.push smallest
      smallest = tested_object
    else
      still_unsorted.push tested_object
    end
  end

  sorted.push smallest
  rec_sort still_unsorted, sorted
end

puts(sort(['can','feel','singing','like','a','can']))

#Shuffle array
def shuffle (arr)
  shuf = []
  while arr.length > 0
    rand_index = rand(arr.length)

    curr_index = 0
    new_arr = []
  
    arr.each do |item|
      if curr_index == rand_index
        shuf.push item
      else
        new_arr.push item
      end

      curr_index = curr_index + 1
    end

    arr = new_arr
  end

  shuf
end

puts(shuffle([1,2,3,4,5,6,7,8,9]))

#Dictionary Sort
def dictionary_sort(arr)
  return arr if arr.length <= 1
  middle = arr.pop
  less = arr.select{|x| x.downcase < middle.downcase}
  more = arr.select{|x| x.downcase >= middle.downcase}
  sort(less) + [middle] + sort(more)
end

words = ['can','feel','singing.','like','A','can']

puts(dictionary_sort(words).join(' '))


# Expanded English Number Program
def english_number(number)
  if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  num_string = ''
  
  ones_place = ['one', 'two', 'three',
  'four', 'five', 'six',
  'seven', 'eight', 'nine']
  
  tens_place = ['ten', 'twenty', 'thirty',
  'forty', 'fifty', 'sixty',
  'seventy', 'eighty', 'ninety']
  
  teenagers = ['eleven', 'twelve', 'thirteen',
  'fourteen', 'fifteen', 'sixteen',
  'seventeen', 'eighteen', 'nineteen']

  left = number
  write = left/100 
  left = left - write*100 
  
  if write > 0
  
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
  if left > 0
 
    num_string = num_string + ' '
  end
end

write = left/10 
left = left - write*10 
if write > 0
  if ((write == 1) and (left > 0))

  num_string = num_string + teenagers[left-1]

  left = 0
else
  num_string = num_string + tens_place[write-1]
end
  if left > 0
    num_string = num_string + '-'
  end
end
write = left 
left = 0 

if write > 0
  num_string = num_string + ones_place[write-1]
end
  num_string
end

puts english_number((0))

num_at_start = 5 # change to 9999 if you want
num_now = num_at_start

while num_now > 2
  puts english_number(num_now).capitalize + ' bottles of beer on the wall, ' +
    english_number(num_now) + ' bottles of beer!'
  num_now = num_now - 1
  puts 'Take one down, pass it around, ' +
    english_number(num_now) + ' bottles of beer on the wall!'
end

puts ("Two bottles of beer on the wall, two bottles of beer!")

