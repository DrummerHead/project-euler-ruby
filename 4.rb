# A palindromic number reads the same both ways. The largest palindrome
# made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.



i = 999
j = 999
steps = 100
posso = []


for i in 100..999
  for j in steps..999
    posso << [i, j, i*j]
  end
  steps = steps +1
end

mangio = posso.sort {|x, y| x[2] <=> y[2]}

for i in mangio

  effo = i[2].to_s
  offe = effo.reverse

  if effo == offe
    puts "#{i[0]} * #{i[1]} = #{i[2]}"
  end
end

# This one does calculations like crazy. I was drunk and not actually
# trying to resolve it but to see what the number was. I guess it works?
#
# Something I've found about myself is that it appears I first want to
# map out the universe, and after I have that mapped out I go and solve the
# little thing that was requested, instead of just using the constrains
# or instructions given by the problem to jump straight ahead to just getting
# the damn number instead of doing so much other stuff.
