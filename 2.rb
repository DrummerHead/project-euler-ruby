# Each new term in the Fibonacci sequence is generated by adding the
# previous two terms. By starting with 1 and 2, the first 10 terms will be:
#
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# By considering the terms in the Fibonacci sequence whose values do not
# exceed four million, find the sum of the even-valued terms.


alp = 0
bet = 1
cha = 1

tot = 0

max = 4000000

(0..2000).each do |i|
  if bet <= max
    puts bet
    cha = bet + alp
    alp = bet
    bet = cha

    if (bet % 2 == 0)
      tot += bet
    end
  else
    break
  end
end

puts "Tha total is:"
puts tot
