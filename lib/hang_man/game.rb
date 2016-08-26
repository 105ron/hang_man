module HangMan


  class Game

	  def play
	  	word = FileOperations.new.secret_word
	  	puts word
	  	attempts = 0
	  	while attempts < 9
	  	  get_user_input
	  	  attempts += 1
	  	end
	  end

	def test_method
	  get_user_input
	end

	private

	def word_to_array(word)

	end

	def get_user_input
	  valid = false
	  puts "Please character would like to guess"
	  until valid
		  guess = gets.downcase.chomp
		  if guess.length == 1
		  	valid = true
		  	match_character(guess)
		  elsif guess.length >= 5
		  	valid = true
		  	match_word(guess)
		  else
		  	puts "Sorry, please enter one character of the word you would like to guess"
		  end
	  end
	end


	def match_character(guess)
	end

	def match_word(guess)
	end
  end


end

#puts HangMan::Game.new.play #simple test
#whats left
#whats guessed