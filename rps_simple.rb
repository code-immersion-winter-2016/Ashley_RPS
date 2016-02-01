#Instructions
#Create a game that plays until the user wants to stop
#Have a player select an item (rock, paper, or scissors)
#Have the computer select a random item
#Use branching to determine who wins


#Rules
#Rock beats scissors
#Paper beats rock
#Scissors beats paper


####################################################################


#Create variables

availChoices = ['rock','paper','scissors']

userChoice = ""

computerChoice = ""

continue = "yes"

winner = ""

#User welcome
puts "Hello, and welcome to the Rock, Paper, Scissors game."

#start loop

loop do
	#Ask the user for their choice
	
	puts "Please enter your choice of rock, paper, or scissors: "

	userChoice = gets.chomp

	#Validate user input

	until availChoices.include?(userChoice.downcase)
		puts "'#{userChoice}' is not a valid choice. Please enter rock, paper, or scissors."
		userChoice = gets.chomp
	end

	#Initialize the computer's choice

	 computerChoice = availChoices.sample

	#Determine winner

	if (userChoice.downcase == "rock")
		if (computerChoice == "rock")
			winner = "no one. It's a tie!"
		elsif (computerChoice == "scissors")
			winner = "you!"
		else
			winner = "computer. Sorry..."
		end
		
		puts "The computer chose #{computerChoice}"
		puts "You chose #{userChoice}"
	elsif (userChoice.downcase == "paper")
		if (computerChoice == "paper")
			winner = "no one. It's a tie!"
		elsif (computerChoice == "rock")
			winner = "you!"
		else
			winner = "computer. Sorry..."
		end
		puts "The computer chose #{computerChoice}"
		puts "You chose #{userChoice}"
	else
		if (computerChoice.downcase == "scissors")
			winner = "no one. It's a tie!"
		elsif (computerChoice == "paper")
			winner = "you!"
		else
			winner = "computer. Sorry..."			
		end
		puts "The computer chose #{computerChoice}"
		puts "You chose #{userChoice}"
	end


	#Print resulting winner

	puts "The winner is #{winner}"


	#Ask the user to play again

	puts "Would you like to play again? Yes or no?"

	continue = gets.chomp

	if (continue.downcase != "yes")
		break
	end


end #end loop