# Starting in the top left corner of a 2×2 grid, and only being able to move to
# the right and down, there are exactly 6 routes to the bottom right corner.
#
# http://projecteuler.net/project/images/p_015.gif
#
# How many such routes are there through a 20×20 grid?


@cache = {}

def reduce_grid(x, y, m)
  cache_index = x > y ? :"#{x}_#{y}_#{m}" : :"#{y}_#{x}_#{m}"

  if @cache[cache_index]
    @cache[cache_index]

  elsif x == 1 || y == 1
    @cache[cache_index] = ([x, y].max + 1) * m

  elsif x == y
    @cache[cache_index] = reduce_grid(x -1, y, m * 2)

  else
    @cache[cache_index] = reduce_grid(x -1, y, m) + reduce_grid(x, y -1, m)
  end
end

result = reduce_grid(20, 20, 1)

puts result

# Fast solution for 015, by caching previous results
# Instant calculation
# This problem was the one that took me the longets to solve so far
