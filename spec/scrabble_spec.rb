require 'scrabble'

game = Scrabble.new

describe 'Score' do

  context "when only letters are used" do
    it "accepts all capitalised words" do
      expect(game.score("CABBAGE")).to eq(14)
    end

    it "accepts all non-capitalised words" do
      expect(game.score("cabbage")).to eq(14)
    end

    it "accepts words with mixed capitalisation" do
      expect(game.score("CabbAGe")).to eq(14)
    end
  end

  context "when no input is given" do
    it "returns 0 for an empty string" do
      expect(game.score("")).to eq(0)
    end

    it "returns 0 if there is a nil input" do
      expect(game.score(nil)).to eq(0)
    end
  end

  context "when there are numbers in the input" do
    it "rejects a word that is only made of numbers" do
      expect(game.score("123")).to eq("Invalid Word")
    end

    it "rejects words that have numbers in them" do
      expect(game.score("Cabbage123Bob")).to eq("Invalid Word")
    end
  end

end
