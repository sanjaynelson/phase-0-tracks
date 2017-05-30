class Word_game
  attr_accessor :guess_count, :word, :encrypt_word, :guesses, :is_over, :game_won

  def initialize(word)
    @word = word
    @guess_count = 0
    @encrypt_word = "*" * word.length
    @guesses = []
    @is_over = false
    @game_won = false
  end

  def guess_tally
    if @guess_count < (@word.length + 2)
    else
      @is_over = true
    end
  end


  def check_guess_letter(guess)
    #conditionals
    if @guesses.include?(guess)
      puts "You already guessed this. Try another letter."
    else
      @guess_count += 1
      @guesses << guess
    end
    if @word.include?(guess) #&& guess != @encrypt_word
      i = @word.index(guess)
      @encrypt_word[i] = guess
    end
  end
  def check_guess_word
    if @word == @encrypt_word
      puts "You got it!"
      @is_over = true
      @game_won = true
    end
  end

end

## UI

puts "Welcome to Word Guess! Please input a word for your friend to guess!"
input = gets.chomp.downcase
game = Word_game.new(input)

until game.is_over == true
  game.guess_tally
  break if game.is_over == true
  puts "Hi, please guess a letter"
  guess = gets.chomp.downcase
  game.check_guess_letter(guess)
  game.check_guess_word
  puts "Currently, you are at #{game.encrypt_word}."
end

if game.game_won == true
  puts "Congratulations, you won!"
else
  puts "Oh well, better luck next time."
end