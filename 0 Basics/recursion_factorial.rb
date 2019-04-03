# factorial task

def factorial(n)
  return 1 if n == 1
  n * factorial(n-1)
end

p factorial(5)
