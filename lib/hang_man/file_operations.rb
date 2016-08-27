module HangMan
  
  class FileOperations


	  def secret_word
	  	word = IO.readlines("5desk.txt")[random_line]
	  	check_suitability(word)
	  	return word
	  end


	  private
	  
	  def random_line
	  	rand(61405) #61405 lines in 5desk.txt
	  end

	  def check_suitability(word)
	  	if word.length < 5 || word.length > 12
	  	  secret_word
	  	end
	  end


	end


end

#puts HangMan::FileOperations.new.secret_word #simple test
