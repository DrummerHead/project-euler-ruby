# The following iterative sequence is defined for the set of
# positive integers:
#
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate
# the following sequence:
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
#
# It can be seen that this sequence (starting at 13 and finishing at 1)
# contains 10 terms. Although it has not been proved yet (Collatz Problem),
# it is thought that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?
#
# Note: Once the chain starts the terms are allowed to go above one million.


number = 0
max = 1000000

num_chain_pairs = []

while number < max

  @chain = 0

  def collatz(n)
    @chain += 1

    if n > 1
      if n % 2 == 0
        m = n/2
      else
        m = (n * 3) + 1
      end

      collatz(m)
    end
  end

  collatz(number)

  num_chain_pairs << [number, @chain]

  number += 1
end

sorted_num_chain_pairs = num_chain_pairs.sort { |x, y| x[1] <=> y[1] }

biggest_value = sorted_num_chain_pairs[-1]

puts biggest_value.inspect

# not very fast...
