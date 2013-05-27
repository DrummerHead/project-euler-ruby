# in this file I'm trying to prove a theory I read somewhere that said
# that if you find all the prime factors of a number, and then add one
# to each of the potencies of the thingies, and multiply thoes numbers;
# you get the amount of total divisors that that number has (prime or
# not)
#
# I honestly did not understand why was that true so I just tried to test
# it empirically with some numbers so I can sleep well at night
#
# zzzZzZz

require 'prime'
@primes = Prime.first(10000)

num = 77777777

@prime_factors = []
@potencies = [0]
@potencies_plus_one = []
@step = 0

# function for finding all prime factors of num
#
def prime_find(number)
  if number > 1
    if (number % @primes[@step]) == 0
      divide = number / @primes[@step]
      @prime_factors << @primes[@step]

      @potencies[@step] += 1

      prime_find(divide)
    else
      @step += 1
      @potencies[@step] = 0

      if @step >= @primes.length
        puts "Sorry, run out of primes to check..."
      else
        prime_find(number)
      end

    end
  end
end

prime_find(num)
puts num
puts @prime_factors.inspect


# checking if multiplying the prime factors actually give us tha number
#
multto = 0
@prime_factors.each do |i|
  if multto == 0
    multto = i
  elsif
    multto = multto * i
  end
end
puts multto

puts "- - - - - -"

# in here I'm trying to find the multi... that variable down there...
#

multiplication_of_potencies_plus_one = 1  #short
@potencies.each do |i|
  j = i + 1
  multiplication_of_potencies_plus_one *= j
end

puts multiplication_of_potencies_plus_one

puts "- - - - - -"



# finding all the divisors of num
#
k = 1
divisors = []

while k <= (num/2)
  if num % k == 0
    divisors << k
  end
  k += 1
end
divisors << num

puts divisors.inspect
puts divisors.length


puts "- - - - - -"


puts "tha theory is " + (divisors.length == multiplication_of_potencies_plus_one).to_s
