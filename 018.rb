# Description of problems:
# http://projecteuler.net/problem=18
# http://projecteuler.net/problem=67

require './018_data.rb'
require './067_data.rb'


def calculate_pyramid_chunk(pyramid, depth, x, y)
  @path_totals_in_chunk = []
  initial_value = pyramid[x][y]
  diepte = (depth < pyramid.length - 1 - x ? depth : pyramid.length - 1 - x)

  def recursive_traversal(pyramid, depth, x, y, val)
    if depth > 0
      new_alpha_val = val + pyramid[x + 1][y]
      new_beta_val = val + pyramid[x + 1][y + 1]

      recursive_traversal(pyramid, depth - 1, x + 1, y, new_alpha_val)
      recursive_traversal(pyramid, depth - 1, x + 1, y + 1, new_beta_val)

    else
      @path_totals_in_chunk << val
    end
  end

  recursive_traversal(pyramid, diepte, x, y, initial_value)
  return @path_totals_in_chunk.max
end


def calculate_maximum_total(pyramid, finesse)
  path = []
  path << pyramid[0][0]

  row = 1
  brick = 0

  while row <= pyramid.length - 1
    alpha = calculate_pyramid_chunk(pyramid, finesse, row, brick)
    beta = calculate_pyramid_chunk(pyramid, finesse, row, brick + 1)

    if alpha > beta
      path << pyramid[row][brick]
      puts pyramid[row][brick]
    else
      path << pyramid[row][brick + 1]
      puts pyramid[row][brick + 1]
      brick += 1
    end

    row += 1
  end

  return path.reduce(:+)
end

puts calculate_maximum_total(@pyramid018, 5)
puts calculate_maximum_total(@pyramid067, 21)


# This is a combination of polite brute force and thinking ahead. The best
# analogy is the chess player who thinks several moves ahead to decide the next
# move. In this case there is a scoped brute force with a "finesse" attribute
# that takes a chunk of the pyramid, analyzes several moves ahead up to finesse
# and then selects one of the two choices according to the maximum sum. The
# winner goes through the same process until the pyramid is traversed
# completely.
#
# For problem 67 the lowest number that yielded the correct value was 21.
# Perhaps there's a more deterministic algorithm for this but I'm quite happy
# with this result. Suggestions welcomed!
