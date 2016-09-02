module HangMan
  
  class FileOperations
  	  require 'yaml'

  	  attr_accessor :user


  	  def start_game(username)
  	  	@user = username
  	  	if user_has_saved_game
  	  	  load_files
  	  	else
  	  	  hangman = Game.new
  	  	  hangman.user = @user
  	  	  hangman.play
  	  	end
  	  end



	  def secret_word
	  	word = IO.readlines("5desk.txt")[random_line]
	  	check_suitability(word)
	  	return word
	  end


	  def save(config,username)
	  	Dir.mkdir("games") unless Dir.exists?("games")
      	File.open("games/#{username}.yaml", "w") { |file| file.puts(YAML::dump(config)) }
      	puts "To load game next time, use #{username} as username."
      	exit
	  end


	  private
	  

	  def user_has_saved_game
	    File.file?("games/#{@user}.yaml")
	  end


	  def load_files
	  	file = File.read("games/#{@user}.yaml")
        config = YAML::load(file)
        hangman = Game.new
        hangman.user = @user
        hangman.load(config)
	  end



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
