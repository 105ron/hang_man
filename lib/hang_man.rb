require_relative "hang_man/version"

module HangMan
  # Your code goes here...
end
lib_path = File.expand_path(File.dirname(__FILE__))
Dir[lib_path + "/hang_man/**/*.rb"].each { |file| require file }
