require './018_data.rb'
require './067_data.rb'


@arroyo_seco = []

def recumagia(pyramid, x, y, val)
  if x < pyramid.length - 1
    new_alpha_val = val + pyramid[x + 1][y]
    new_beta_val = val + pyramid[x + 1][y + 1]

    recumagia(pyramid, x + 1, y, new_alpha_val)
    recumagia(pyramid, x + 1, y + 1, new_beta_val)
  else
    @arroyo_seco << val
  end
end

# recumagia(@pyramid018, 0, 0, @pyramid018[0][0])
# puts @arroyo_seco.max




def recuwrapmagia(pyramid, depth, x, y, val)
  @arroyo_medio_seco = []

  diepte = (depth < pyramid.length - 1 - x ? depth : pyramid.length - 1 - x)
  puts "diepte = #{diepte}"

  def recuexistencia(pyramid, depth, x, y, val)
    if depth > 0
      new_alpha_val = val + pyramid[x + 1][y]
      new_beta_val = val + pyramid[x + 1][y + 1]

      recuexistencia(pyramid, depth - 1, x + 1, y, new_alpha_val)
      recuexistencia(pyramid, depth - 1, x + 1, y + 1, new_beta_val)
    else
      @arroyo_medio_seco << val
    end
  end

  recuexistencia(pyramid, diepte, x, y, val)

  return @arroyo_medio_seco.max

end

puts recuwrapmagia(@pyramid018, @pyramid018.length - 1, 0, 0, @pyramid018[0][0])
puts "============"



def calculamelecoso(pyramid, finesse)
  pathofbuenagente = []
  pathofbuenagente << pyramid[0][0]

  row = 1
  brick_position = 0

  while row <= pyramid.length - 1
    alpha = recuwrapmagia(pyramid, finesse, row, brick_position, pyramid[row][brick_position])
    beta = recuwrapmagia(pyramid, finesse, row, brick_position + 1, pyramid[row][brick_position + 1])

    if alpha > beta
      pathofbuenagente << pyramid[row][brick_position]
      puts pyramid[row][brick_position]
    else
      pathofbuenagente << pyramid[row][brick_position + 1]
      puts pyramid[row][brick_position + 1]
      brick_position += 1
    end

    row += 1
  end

  return pathofbuenagente.reduce(:+)
end

puts calculamelecoso(@pyramid018, 5)
puts calculamelecoso(@pyramid067, 24)

def find_biggest_path(pyramid)
  pyr_size = pyramid.size
  results = []
  count = 0

  while pyr_size > count
    (0..count).each do |n|
      puts pyramid[count][n]
    end
    count += 1
  end
end

# find_biggest_path(pyramid018)











=begin

puts pyramid018[4][4]

def findy(row, brick, pyramid)
  [pyramid[row][brick] + pyramid[row + 1][brick], pyramid[row][brick] + pyramid[row + 1][brick + 1]]
end

pyrsize = pyramid018.size - 1

pyrsize.each do |num|
  findy(num, )
end

puts findy(0, 0, pyramid018).inspect
puts findy(4, 3, pyramid018).inspect
puts findy(8, 2, pyramid018).inspect
=end
