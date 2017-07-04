class Scrabble

  def initialize
    #initialize hash with letters as keys, and points as value
    @points = { "A" => 1, "B" => 3, "C" => 3, "D" => 2,
    "E" => 1, "F" => 4, "G" => 2, "H" => 4,
    "I" => 1, "J" => 8, "K" => 5, "L" => 1,
    "M" => 3, "N" => 1, "O" => 1, "P" => 3,
    "Q" => 10, "R" => 1, "S" => 1, "T" => 1,
    "U" => 1, "V" => 4, "W" => 4, "X" => 8,
    "Y" => 4, "Z" => 10 }
  end

  def score(word)
    _total = 0

    if word == nil or word.length == 0
      return _total #returns 0 if the word is nil, or is an empty string

    elsif validate(word) == true
      return "Invalid Word" #returns invalid word if there is a number in the word

    else
      word.each_char do |letter|
        _total += @points[letter.upcase] #upcase input to match hash keys
      end

    end

    return _total

  end

  def validate(word)

    if /\d+/.match(word) #checks to see if there is a number in the word
      return true
    else
      return false
    end

  end

end
