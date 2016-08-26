require "spec_helper"
 
module HangMan
  describe FileOperations do

	it "Selects a word from 5desk.text" do
  	  word = FileOperations.new.secret_word
  	  expect(word.class).to eq(String)
	end
  end
end