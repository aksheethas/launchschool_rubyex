#Hash exercises
#Q1
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
fam =  family.select {|k, v| (k == :sisters) || (k == :brothers)}
puts fam.values

#Q2
a = {'x' => 100, 'y' => 200}
b = {'y' => 300, 'z' => 400}
puts a.merge(b) #does not change the caller (non-destructive method)
puts a
puts b
puts a.merge!(b) #changes the caller that called the method, in this case a
puts a
puts b

#Q3
names = {a: 'lucy', b: 'molly', c: 'henry', d: 'steve'}
names.each_key {|x| puts x}
names.each_value {|x| puts x}
names.each {|k, v| puts "They key is #{k} and the value is #{v}"}

#Q4
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
puts person[:name]

#Q5
if names.has_value?("lucy")
  puts 'Found it!'
else
  puts "Not found!"
end

#Q6
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          
arr = {}
words.each do |word|
  k = word.split('').sort.join
  if arr.has_key?(k)
    arr[k].push(word)
  else
    arr[k] = [word]
  end
end

puts arr
