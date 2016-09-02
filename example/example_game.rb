# /example/example_game.rb
root = File.expand_path("../", File.dirname(__FILE__))
require "#{root}/lib/hang_man.rb"
 
puts "Welcome to Hang Man"
puts "What is your user name?"
user = gets.chomp.downcase
hangman = HangMan::FileOperations.new #(user).play
hangman.start_game(user)

