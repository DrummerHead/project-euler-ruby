# The sequence of triangle numbers is generated by adding the natural
# numbers. So the 7th triangle number would be
# 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:
#
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
#
# Let us list the factors of the first seven triangle numbers:
#
#      1: 1
#      3: 1,3
#      6: 1,2,3,6
#     10: 1,2,5,10
#     15: 1,3,5,15
#     21: 1,3,7,21
#     28: 1,2,4,7,14,28
#
# We can see that 28 is the first triangle number to have
# over five divisors.
#
# What is the value of the first triangle number to have
# over five hundred divisors?


require 'prime'
@primes = Prime.first(10000)

divisors_goal = 500
i = 0
j = 0


loop do
  i += 1
  j += i
  @potencies = [0]
  @potencies_plus_one = []
  @step = 0

  def prime_potencies_find(number)
    if number > 1
      if (number % @primes[@step]) == 0
        divide = number / @primes[@step]
        @potencies[@step] += 1

        prime_potencies_find(divide)
      else
        @step += 1
        @potencies[@step] = 0

        if @step >= @primes.length
          puts "Sorry, run out of primes to check..."
        else
          prime_potencies_find(number)
        end
      end
    end
  end
  prime_potencies_find(j)

  multiplication_of_potencies_plus_one = 1  #short
  @potencies.each do |i|
    l = i + 1
    multiplication_of_potencies_plus_one *= l
  end


  if multiplication_of_potencies_plus_one > divisors_goal
    puts j
    puts multiplication_of_potencies_plus_one
    break
  end

end

# The code is nasty. I'm gonna have to do a code review on this one.
# To understand more about why this works, check 012test.rb
