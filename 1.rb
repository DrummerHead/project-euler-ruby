# If we list all the natural numbers below 10 that are multiples
# of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

tot = 0

for i in 0..999 do
  mul3 = (i%3 == 0)
  mul5 = (i%5 == 0)

  if mul3 or mul5
    tot = tot + i
  end
end

puts tot
