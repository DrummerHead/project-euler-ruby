# Starting in the top left corner of a 2×2 grid, and only being able to move to
# the right and down, there are exactly 6 routes to the bottom right corner.
#
# http://projecteuler.net/project/images/p_015.gif
#
# How many such routes are there through a 20×20 grid?


@result = 0

def reduce_grid(ary)
  if ary[0] == 1 || ary[1] == 1
    @result += ([ary[0], ary[1]].max + 1) * ary[2]

  elsif ary[0] == ary[1]
    new_xy = [ary[0] -1, ary[1], ary[2] * 2]
    reduce_grid(new_xy)

  else
    new_x = [ary[0] -1, ary[1], ary[2]]
    new_y = [ary[0], ary[1] -1, ary[2]]
    reduce_grid(new_x)
    reduce_grid(new_y)
  end
end

reduce_grid([15, 15, 1])
puts @result
