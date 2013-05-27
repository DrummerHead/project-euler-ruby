require 'prime'
primes = Prime.first(10000)

num = 20
num_calc = 20

prime_factors =[]

i = 0

while num_calc > 0
  puts primes[i].inspect
  puts num_calc.inspect

  if (num_calc % primes[i].to_i) == 0
    prime_factors << primes[i]
    num_calc = num_calc / primes[i]
  end

  i += 1
end

puts num
puts prime_factors.inspect
