# Starting in the top left corner of a 2×2 grid, and only being able to move to
# the right and down, there are exactly 6 routes to the bottom right corner.
#
# http://projecteuler.net/project/images/p_015.gif
#
# How many such routes are there through a 20×20 grid?


def reduce_grid(x, y, m)
  if x == 1 || y == 1
    ([x, y].max + 1) * m

  elsif x == y
    reduce_grid(x -1, y, m * 2)

  else
    reduce_grid(x -1, y, m) + reduce_grid(x, y -1, m)
  end
end

result = reduce_grid(20, 20, 1)
puts result

# Slow solution for 015 (up to 20 minutes)
# Check 015_cache.rb for fastest solution
