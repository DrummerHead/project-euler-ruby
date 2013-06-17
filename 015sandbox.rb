=begin

side = 1
coso = 2 ** 1

side = 2
coso = 2 ** 3

side = 3
coso = 2 ** 5

side = 4
coso = 2 ** 7

side = 5
coso = 2 ** 9

=end




=begin

side = 3
max_options = 2 ** (side*2 -1)

side_delete = side - 1
delete_options = (2 ** (side_delete *2 -1)) * 2

options_total = max_options - delete_options

puts side
puts "#{side} ** #{(side*2 -1)}"
puts max_options
puts delete_options

puts "-------"

puts options_total

=end




=begin

one = 2

side2 = 2
two = (2 ** (side2*2 -1)) - ( one * 2) + 2
puts two

side3 = 3
three = (2 ** (side3*2 -1)) - ( two * 2)
puts three

side4 = 4
three = (2 ** (side4*2 -1)) - ( three * 2)
puts three

=end


# let's treat the row as a 'primitive' since it's calculation is straightforward. A row is any n * 1 grid. all grids will be treated as vertical since for the effects of the result of the calculation, it's the same.
# The desire is to reduce all calculation to a series of primitives.


@result = 0

def reduceGrid(ary)
  puts "ary is #{ary.inspect}"

  if ary[0] == 1 || ary[1] == 1
    puts "result (#{@result}) = result + #{(ary.max + 1)}"
    @result += (ary.max + 1)
  else
    new_x = [ary[0] -1, ary[1]]
    new_y = [ary[0], ary[1] -1]

    puts "calculate #{new_x.inspect}"
    reduceGrid(new_x)

    puts "calculate #{new_y.inspect}"
    reduceGrid(new_y)


    # puts new_x.inspect
    # puts new_y.inspect
  end

  puts "result = #{@result}"
  puts "======="
end

reduceGrid([20,20])

=begin
reduceGrid(jorge)
puts '======'
reduceGrid([1, 4])
puts '======'
reduceGrid([5, 7])
puts '======'
reduceGrid([3, 3])
puts '======'
reduceGrid([3, 1])
puts '======'
reduceGrid([5, 1])
puts '======'
reduceGrid([7, 1])
puts '======'
=end



