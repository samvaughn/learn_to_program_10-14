puts 'What is your first name?'
first = gets.chomp
puts 'What is your middle name?'
middle = gets.chomp
puts 'What is your last name?'
last = gets.chomp

full = first.length + middle.length + last.length

puts 'Did you know there are ' +  full.to_s + ' characters in your name?'
