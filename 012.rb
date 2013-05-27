divisors_goal = 500
i = 0
j = 0

loop do
  i += 1
  j += i

  k = 1
  divisors = []

  while k <= (j/2)

    if j % k == 0
      divisors << k
    end

    k += 1
  end

  divisors << j

  if divisors.length > divisors_goal
    puts j
    puts divisors.inspect
    break
  end

end
