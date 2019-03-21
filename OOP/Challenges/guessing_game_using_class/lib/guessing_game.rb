# captivating project I've ever had. Because I have solved this challenge using partially OOP. Lol!

class GuessingGame
  def initialize(min, max)
    @min = min
    @max = max
    @secret_num = rand(100)
    @num_attempts = 0
    @game_over = false
  end

  def game_over=(game_over)
    @game_over = game_over
  end

  def num_attempts
    @num_attempts
  end

  def game_over?
    @game_over
  end

  def check_num(number)
    if number > @secret_num
      @num_attempts += 1
      p "too big"
    elsif number  < @secret_num
      @num_attempts += 1
      p "too small"
    else
      @game_over = true
      p "you win"
    end
  end

  def ask_user
    p "enter a number"
    number = gets.chomp.to_i
    check_num(number)
  end

end
