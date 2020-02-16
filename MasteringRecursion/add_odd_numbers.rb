 def add_odd_numbers(n)
    return n if n == 1

    if n.even?
      add_odds(n-1)
    else
      n + add_odds(n-1)
    end
  end
