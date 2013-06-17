# Starting in the top left corner of a 2×2 grid, and only being able to move to
# the right and down, there are exactly 6 routes to the bottom right corner.
#
# http://projecteuler.net/project/images/p_015.gif
#
# How many such routes are there through a 20×20 grid?


@result = 0

def reduceGrid(ary)
  if ary[0] == 1 || ary[1] == 1
    @result += (ary.max + 1)
  else
    new_x = [ary[0] -1, ary[1]]
    new_y = [ary[0], ary[1] -1]

    reduceGrid(new_x)
    reduceGrid(new_y)
  end
end

reduceGrid([14,14])
puts @result
