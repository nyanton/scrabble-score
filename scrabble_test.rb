require "minitest/autorun"
require_relative "lib/scrabble"

class GameTest < Minitest::Test

  def setup
    @game = Scrabble.new
  end

  def test_score
    assert_equal @game.score('CABBAGE'), 14
  end

  def test_lower_case
    assert_equal @game.score('cabbage'), 14
  end

  def test_mixed_case
    assert_equal @game.score("CaBbAge"), 14
  end

  def test_empty_string
    assert_equal @game.score(""), 0
  end

  def test_nil
    assert_equal @game.score(nil), 0
  end

end
