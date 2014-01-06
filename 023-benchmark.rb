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



start = Time.now



raw_sum_of_abundant_numbers = []
nums_which_cannot_be_written_as_the_sum_of_two_abundant_numbers = []

def sum_of_proper_divisors(n)
  proper_divisors = []
  proper_divisors << 1

  (2..Math.sqrt(n).to_int).each do |num|
    if n % num == 0
      proper_divisors << num
      proper_divisors << n / num unless num == n / num
    end
  end

  return proper_divisors.reduce(:+)
end

abundant_numbers = (12..28111).select{ |num| num < sum_of_proper_divisors(num) }



find_abundant_numbers = Time.now



abundant_numbers.each_with_index do |first_num, index|
  abundant_numbers[index..-1].each do |second_num|
    sum = first_num + second_num
    if sum < 28124
      raw_sum_of_abundant_numbers << first_num + second_num
    end
  end
end



raw_sum_abundant_numbers = Time.now



sum_of_abundant_numbers = raw_sum_of_abundant_numbers.sort.uniq



refine_sum_abundant_numbers = Time.now



nums_which_cannot_be_written_as_the_sum_of_two_abundant_numbers =
  (1..28123).to_a - sum_of_abundant_numbers



find_result_array = Time.now



puts nums_which_cannot_be_written_as_the_sum_of_two_abundant_numbers.reduce(:+)



finish = Time.now


puts "================="
puts "find_abundant_numbers - start = #{find_abundant_numbers - start}"
puts "raw_sum_abundant_numbers - find_abundant_numbers = #{raw_sum_abundant_numbers - find_abundant_numbers}"
puts "refine_sum_abundant_numbers - raw_sum_abundant_numbers = #{refine_sum_abundant_numbers - raw_sum_abundant_numbers}"
puts "find_result_array - refine_sum_abundant_numbers = #{find_result_array - refine_sum_abundant_numbers}"
puts "finish - find_result_array = #{finish - find_result_array}"
puts "================="
puts "Total time = #{finish - start}"


# Improved from previous 60s to 5s
