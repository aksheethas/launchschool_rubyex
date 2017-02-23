#Chapter 7 exercises
#99 Bottles of Beer on the Wall
start = 99

while start > 95
    puts start.to_s + ' bottles of beer on the wall, ' + start.to_s + ' bottles of beer!'
    start = start - 1
    puts 'Take one down, pass it around, ' + start.to_s + ' bottles of beer on the wall!'
end

#Deaf Grandma
puts "HEY THERE, SONNY! GIVE GRANDMA A KISS!"

while true
    talk = gets.chomp
    if talk == "BYE!"
        puts "BYE BYE!"
        break
    end
    
    if talk != talk.upcase
        puts 'HUH?! SPEAK UP SONNY'
    else
        year = 1930 + rand(21)
        puts 'NO, NOT SINCE ' + year.to_s + '!'
    end
end

#DEAR GRANDMA EXTENDED
puts "HEY THERE, SONNY! GIVE GRANDMA A KISS!"
count = 0
while true
    talk = gets.chomp
    if talk == "BYE!"
        count = count + 1
    else
        count == 0
    end
    
    if count >= 3
        puts 'BYE BYE!'
        break
    end
    
    if talk != talk.upcase
        puts 'HUH?! SPEAK UP SONNY'
    else
        year = 1930 + rand(21)
        puts 'NO, NOT SINCE ' + year.to_s + '!'
    end
end

#LEAP YEARs
puts "Give a start year"
start_year = gets.chomp.to_i

puts "Give an end year"
end_year = gets.chomp.to_i

while start_year <= end_year
    if start_year%4 == 0
        if start_year%100 != 0 || start_year%400 == 0
            puts start_year
        end
    end
    
    start_year += 1
end



