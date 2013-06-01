# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

require 'prime'
@primes = Prime.first(10000)

args = ARGF.argv
@prime_factors = []
@step = 0

unless args.empty?
  numo = args[0].to_i
else
  numo = 600851475143
end

def prime_find(number)
  if number > 1
    if (number % @primes[@step]) == 0
      divide = number / @primes[@step]
      @prime_factors << @primes[@step]
      prime_find(divide)
    else
      @step += 1
      if @step >= @primes.length
        puts "Sorry, run out of primes to check..."
      else
        prime_find(number)
      end
    end
  end
end

prime_find(numo)
puts "\n#{numo}'s primes are:"
puts @prime_factors.inspect


# Note: I refuse to just start dividing willy nilly without
# knowing if the divisor is prime or not. Yeah, the way I
# do it needs a huge array with primes... but it's more
# computationally efficient :tongue:
