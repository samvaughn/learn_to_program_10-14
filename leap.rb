puts 'Pick a year, any year to start:'
starting_year = gets.chomp.to_i

puts 'Enter an ending year:'
ending_year = gets.chomp.to_i

puts 'Here are the leap years in that range:'
year = starting_year

while year <= ending_year
  if year%4 == 0
    if year%100 != 0 || year%400 == 0
      puts year
    end
  end

  year = year + 1
end