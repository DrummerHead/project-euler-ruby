# n! means n × (n − 1) × ... × 3 × 2 × 1
#
# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the # digits in the number 10! is
# 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#
# Find the sum of the digits in the number 100!


def factorial(n)
  (1..n).reduce(:*)
end

def sum_of_digits(n)
  n.to_s.split('').map{|s| s.to_i}.reduce(:+)
end

puts sum_of_digits(factorial(100))


# mapreduce FTW
