def factorial
    yield
end

n = gets.to_i
factorial do 
    puts n.downto(1).reduce(:*)
end
