puts 'Hello sweetie, how are you?'
bye_count = 0

while true
	reply = gets.chomp

	if reply == 'BYE'
    bye_count = bye_count + 1
  else
		bye_count = 0
	end
	
	if bye_count >= 3	
		puts 'Fine, go! You\'ve stayed your hour!'
		break
	end

	if reply != reply.upcase
		puts 'Huh?! Granny is a little deaf. You\'re gonna have to speak up.'

	else 
		random_year = 1930 + rand(10)
		puts 'No, not since ' + random_year.to_s + '.'
		
	end 
end 


