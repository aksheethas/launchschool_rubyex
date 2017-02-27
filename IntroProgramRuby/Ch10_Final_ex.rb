#Final Exercises
#q1
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |x| puts x }

#q2
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |x| puts x if x > 5}

#q3
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr_odd = arr.select { |x| x % 2 != 0}
puts arr_odd

#q4
#append
arr.push(11)
#prepend
arr.unshift(0)
puts arr

#q5
arr.pop
arr.push(3)
puts arr

#q6
arr.uniq 
#or
arr.uniq!

#q8
h = {:greeting => 'hello'}
h = {greeting: 'hello'}

#q9
h = {a:1, b:2, c:3, d:4}
h[:b]
h[:e] = 5
h.delete_if { |key, value| value < 3.5 }

#q10
#yes, hash values can be arrays
h1 = {greetings: ['hello', 'good morning', 'bye']}
#array of hashes
arr = [{greeting: 'hello'}, {greeting: 'good morning'}, {greeting: 'bye'}]

#q11
#Hashes have a lot of functionality and versatility and that is the reason I like them

#q12
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

#q13
puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"

#q14
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

#q15
arr.delete_if { |word| word.start_with?("s") }

arr.delete_if { |word| word.start_with?("s", "w") }

#q16
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a = a.map { |pairs| pairs.split }
a = a.flatten
p a

#q17
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

#outputs 'These hashes are the same!'











