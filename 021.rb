# Let d(n) be defined as the sum of proper divisors of n (numbers less than n
# which divide evenly into n). If d(a) = b and d(b) = a, where a ≠ b, then a
# and b are an amicable pair and each of a and b are called amicable numbers.
#
# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44,
# 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4,
# 71 and 142; so d(284) = 220.
#
# Evaluate the sum of all the amicable numbers under 10000.


def sum_of_proper_divisors(n)
  (1..n/2).select{ |num| n % num == 0 }.reduce(:+) unless n == nil
end

def amicable?(a)
  b = sum_of_proper_divisors(a)
  a_again_supposedly = sum_of_proper_divisors(b)

  a_again_supposedly == a && b != a ? true : false
end

puts (0..10000).select{ |num| amicable?(num) }.reduce(:+)


# Could use the `b` calculation on `amicable?`
