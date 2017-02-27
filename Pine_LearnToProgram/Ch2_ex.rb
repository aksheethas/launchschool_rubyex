#write a program that tells you the following:
#Number of hours in a year
puts (24*365)

#Number of minutes in a decade
#calculating from 2006-2016, since the years 2008, 2012 and 2016 are leap years, would have to add 3 to total count
puts 60*24*(365*10 + 3)

#My age in seconds
#need to account for leap years so since the year I was born there have been 6 leap years
puts 60*60*24*(365*23 + 6)

#the author's age
puts 1025000000/(60*60*24*365)

#output
# 8760
# 5260320
# 725846400
# 32


