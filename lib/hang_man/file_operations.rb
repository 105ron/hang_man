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
	  	file_path = get_path
	  	file_path << "5desk.txt"
	  	word = IO.readlines(file_path)[random_line]
	  	check_suitability(word)
	  	return word
	  end


	  def save(config,username)
	  	@user = username
	  	Dir.mkdir("games") unless Dir.exists?("games")
      	File.open(get_path_save, "w") { |file| file.puts(YAML::dump(config)) }
      	puts "To load game next time, use #{username} as username."
      	exit
	  end


	  private
	  

	  def user_has_saved_game
	    File.file?(get_path_save)
	  end


	  def load_files
	  	file = File.read(get_path_save)
        config = YAML::load(file)
        hangman = Game.new
        hangman.user = @user
        hangman.load(config)
	  end



	  def random_line
	  	rand(61405) #61405 lines in 5desk.txt
	  end

	  def get_path
	  	string = File.expand_path("../", File.dirname(__FILE__))
	  	string[0..-4]
	  end


	  def get_path_save
	  	string = get_path 
	  	string = string + "/games/" + @user + ".yaml"
	  	return string
	  end


	  def check_suitability(word)
	  	if word.length < 5 || word.length > 12
	  	  secret_word
	  	end
	  end


	end


end

#puts HangMan::FileOperations.new.secret_word #simple test
