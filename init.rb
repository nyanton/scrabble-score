require_relative 'lib/scrabble'

game = Scrabble.new

print "Please enter a word to find its Scrabble score: "

input = gets.chomp

if game.score(input) != "Invalid Word"
  puts "The word #{input} gets #{game.score(input)} points"
else
  puts game.score(input)
end
