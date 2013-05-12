# A Pythagorean triplet is a set of three natural numbers,
# a < b < c, for which,
# a^2 + b^2 = c^2
#
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.




for c in 334..500 do
  left = 1000 - c

  for b in 1..left
    a = left - b

    abpow = a ** 2 + b ** 2
    cpow = c ** 2

    if abpow == cpow
      puts "found it, it's"
      puts [a, b, c].inspect
      puts a*b*c
      puts "=====\n\n"
    end
  end
end

# It throws a dummy to confuse the enemy
