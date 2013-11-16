puts 'What year were you born in? Please enter the four digit year.'
year = gets.chomp.to_i

puts 'What month were you born in? Please enter 1 - 12 for the month.'
month = gets.chomp.to_i

puts 'What day were you born on?'
day = gets.chomp.to_i

b = Time.local(year, month, day)
t = Time.new

age = 1

while Time.local(year + age, month, day) <= t
  puts 'SPANK!'
  age = age + 1
end







