# The sum of the squares of the first ten natural numbers is,
# 12 + 22 + ... + 102 = 385
#
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025
#
# Hence the difference between the sum of the squares of the
# first ten natural numbers and the square of the sum is
# 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the
# first one hundred natural numbers and the square of the sum.




amount = 100
sum_of_squares = 0
square_of_sum = 0

for i in 1..amount  do
  square = i ** 2
  sum_of_squares += square
  square_of_sum += i
end

square_of_sum = square_of_sum ** 2
difference = square_of_sum - sum_of_squares

puts "tha difference is #{difference }"


# I'm surprised of how easy this one was compared to the others
# It reminds me of the practice of having an easy inbetween level
# to entice the player to keep on playing
