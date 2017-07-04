require_relative 'lib/scrabble.rb'

game = Scrabble.new
puts game.score("hello")
puts game.score("cabbage")
puts game.score("")
puts game.score(nil)
