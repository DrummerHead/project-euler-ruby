# 2520 is the smallest number that can be divided by each of the
# numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible
# by all of the numbers from 1 to 20?




max_dividends_seed = 77777777777777
max_divisors = 20


evenly_divisible = catch :gotit do

  for i in 1..max_dividends_seed do
    dividend = i * max_divisors
    divisible_count = 0

    for j in 2..max_divisors do
      if dividend % j == 0
        divisible_count += 1
      else
        break
      end

      if divisible_count == max_divisors - 1
        throw :gotit, dividend
      end
    end

  end

end

puts "tha number is #{evenly_divisible}"

# WHOOOOAAA!! This solution is FUCKING SLOW!!
# Edit: Some refactor made it slightly less sucking... still slow
