# A perfect number is a number for which the sum of its proper divisors is
# exactly equal to the number. For example, the sum of the proper divisors of
# 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.
#
# A number n is called deficient if the sum of its proper divisors is less than
# n and it is called abundant if this sum exceeds n.
#
# As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest
# number that can be written as the sum of two abundant numbers is 24. By
# mathematical analysis, it can be shown that all integers greater than 28123
# can be written as the sum of two abundant numbers. However, this upper limit
# cannot be reduced any further by analysis even though it is known that the
# greatest number that cannot be expressed as the sum of two abundant numbers
# is less than this limit.
#
# Find the sum of all the positive integers which cannot be written as the sum
# of two abundant numbers.


raw_sum_of_abundant_numbers = []
nums_which_cannot_be_written_as_the_sum_of_two_abundant_numbers = []

def sum_of_proper_divisors(n)
  (1..n/2).select{ |num| n % num == 0 }.reduce(:+) unless n == nil
end

abundant_numbers = (12..28111).select{ |num| num < sum_of_proper_divisors(num) }

abundant_numbers.each do |first_num|
  abundant_numbers.each do |second_num|
    raw_sum_of_abundant_numbers << first_num + second_num
  end
end

sum_of_abundant_numbers = raw_sum_of_abundant_numbers.sort.uniq.select { |num| num < 28124 }

(1..28123).each do |num|
  if !sum_of_abundant_numbers.include?(num)
    nums_which_cannot_be_written_as_the_sum_of_two_abundant_numbers << num
  end
end

puts nums_which_cannot_be_written_as_the_sum_of_two_abundant_numbers.reduce(:+)


# This is so brute-forcey... but the problem is also so annoying
# Why do I do this? Hahaha
