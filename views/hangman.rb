class Hangman
	attr_accessor :name,:guessed,:correct_blank, :counter 
	def initialize(password_name)
		@name = password_name
		@guessed= []
		@correct_blank= blank
		@wrong_guess = ()
		@counter = 0
	end
	def make_move(letter)
		if correct_letter?(letter)
			correct_index(letter)
		else
			@counter +=1
		end
	end
	def correct_letter(letter)
		name.include?(letter)
	end
	

	def charcount
		name.length
	end
	def blank
		Array.new(charcount,"_")
	end
	def correct_letter(letter)
		name.include(letter)
	end
	def update_guessed(choice)
		guessed.push(choice)
	end
	def correct_index(letter)
		password = name.split ("")
		password.each_with_index do|letter,index postion|
		if letter == guessletter
			correct_blank[index_position]
	end
	def 


end