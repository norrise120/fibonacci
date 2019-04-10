# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: O(n), where n is the integer that is passed in
# Space complexity: O(1)
def fibonacci(n)
  if !n || n < 0
    raise ArgumentError, "Must pass in an non-negative integer, received: #{n}"
  end

  return 0 if n == 0

  i = 0
  j = 1

  while n > 1
    temp = j + i
    i = j
    j = temp
    n -= 1
  end

  return j
end
