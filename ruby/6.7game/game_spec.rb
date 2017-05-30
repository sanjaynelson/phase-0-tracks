
# RSpec
# 'describe' block for each group of tests
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

require_relative 'game'

describe Word_game do
  let(:game) { game.new }
  let(:word) { "Test" }
  let(:guess) {"t"}

  it "encrypts word" do
    expect("_" * word.length).to eq "____"
  end

  it "checks guess" do
    expect (game.check_guess(word)).to eq "You got it!"
  end

  it "something" do
    expect (word.include?(guess)).to eq false
  end
  #it "determines guess number"
end