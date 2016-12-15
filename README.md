# Hangman

Hangman loads a word between 5 and 12 characters from [this file](http://scrapmaker.com/view/twelve-dicts/5desk.txt).The word to guess is represented by a row of dashes, representing each letter of the word. If the guessing user suggests a letter which occurs in the word, the other computer displays it in all its correct positions. If the suggested letter does not occur in the word, the computer tallies the number of incorrect guesses.

The user may, at any time, attempt to guess the whole word. If the word is correct, the game is over and the user wins. Otherwise, the computer penalizes the user by adding to the incorrect tally. If the makes 10 incorrect guesses the game is lost. However, the user can also win by guessing all the letters that appears in the word, thereby completing the word, before the tally reaches 10. See [Wikipedia](http://www.theodinproject.com/courses/ruby-programming/lessons/file-i-o-and-serialization?ref=lc-pb) for more information and game rules.

This is a project for [TheOdinProject's](http://www.theodinproject.com) Ruby track. See [here](http://www.theodinproject.com/courses/ruby-programming/lessons/file-i-o-and-serialization?ref=lc-pb) for more information.


