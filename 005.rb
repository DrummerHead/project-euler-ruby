# 2520 is the smallest number that can be divided by each of the
# numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible
# by all of the numbers from 1 to 20?


got_solution = false
max_divisor = 20
solution_divided_by_max_divisor = 0


while got_solution == false
  test_solution = (solution_divided_by_max_divisor += 1) * max_divisor

  divisor = max_divisor - 1

  while divisor >= 2
    if test_solution % divisor == 0
      divisor -= 1
    else
      break
    end
  end

  if divisor == 1
    got_solution = true
    puts test_solution
  end
end


# Rewrite from scratch of 005 to test other language comparative speed
# Much faster now, but let's see the other language...
#
# Yeap, C++ is faster. Who would have guessed...
