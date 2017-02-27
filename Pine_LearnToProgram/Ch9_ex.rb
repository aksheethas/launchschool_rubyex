#Improved ask method
def ask(question)
  while true
    puts question
    reply = gets.chomp.downcase
    if reply == 'yes'
      return true
    end
    if reply == 'no'
      return false
    end
    
    puts 'Answer with yes or no'
  end
    
  reply
end

puts(ask('Do you like burritos?'))

#Old-School Roman Numerals
def old_roman_numeral(num)
  #define an exception
  if num <= 0
    raise 'Must use a postiive number'
  end 
  roman = ''
  roman << 'M' * (num / 1000)
  roman << 'D' * (num % 1000 / 500)
  roman << 'C' * (num % 500 / 100)
  roman << 'L' * (num % 100 / 50)
  roman << 'X' * (num % 50 / 10)
  roman << 'V' * (num % 10/ 5)
  roman << 'I' * (num % 5 / 1)
  
  roman
end

puts(old_roman_numeral(2016))

#Modern Roman Numerals
#question mark indicates that this method return a boolean value
def modern_roman_numeral(num)
  thousand = (num / 1000)
  hundred = (num % 1000 / num)
  ten = (num % 100 / 10)
  one = (num % 10)
  
  roman = 'M' * thousand
  
  if hundred == 9
    roman += 'CM'
  elsif hundred == 4
    roman += 'CD'
  else
    roman = roman + 'D' * (num % 1000 / 500)
    roman = roman + 'C' * (num % 500 / 100)
  end
  
  if ten == 9
    roman += 'XC'
  elsif ten == 4
    roman += 'XL'
  else
    roman = roman + 'L' * (num % 100 / 50)
    roman = roman + 'X' * (num % 50 / 10)
  end
  
  if one == 9
    roman += 'IX'
  elsif one == 4
    roman += 'IV'
  else
    roman = roman + 'V' * (num % 10 / 5)
    roman = roman + 'I' * (num % 5 / 1)
  end
  
  roman
end

puts(modern_roman_numeral(2016))
