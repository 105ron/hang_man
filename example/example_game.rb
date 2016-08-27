# /example/example_game.rb
root = File.expand_path("../", File.dirname(__FILE__))
require "#{root}/lib/hang_man.rb"
 
puts "Welcome to Hang Man"
HangMan::Game.new.play

