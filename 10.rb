# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.

require 'prime'

max = 2000000
result = 0

Prime.each(max) do |i|
  result += i
end

puts result


# Cheating at its finest
