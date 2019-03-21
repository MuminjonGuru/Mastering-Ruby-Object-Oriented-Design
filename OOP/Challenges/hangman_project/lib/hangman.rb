class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, "_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def self.random_word
    DICTIONARY.sample
  end

  def attempted_chars
    @attempted_chars
  end

  def guess_word
    @guess_word
  end

  def already_attempted?(char)
    @attempted_chars.include?(char)
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def get_matching_indices(char)
    matching_indices = []
    @secret_word.each_char.with_index do |secret_char, i|
      if char == secret_char
        matching_indices << i
      end
    end
    matching_indices
  end

  def fill_indices(char, indices)
    indices.each do |index|
      @guess_word[index] = char
    end
  end

  def try_guess(char)
    if self.already_attempted?(char)
      puts "that has already attempted"
      return false
    end
    @attempted_chars << char
    matches = self.get_matching_indices(char)
    self.fill_indices(char, matches)
    @remaining_incorrect_guesses -= 1 if matches.empty?
    true
  end

  def ask_user_for_guess
    puts "Enter a char: "
    self.try_guess(gets.chomp)
  end

  def win?
    if @guess_word.join("") == @secret_word
      puts "WIN"
      return true
    else
      return false
    end
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      puts "LOSE"
      return true
    else
      return false
    end
  end

  def game_over?
    if self.win? || self.lose?
      puts @secret_word
      return true
    else
      return false
    end
  end
end
