# Using names.txt, a 46K text file containing over five-thousand first names,
# begin by sorting it into alphabetical order. Then working out the
# alphabetical value for each name, multiply this value by its alphabetical
# position in the list to obtain a name score.
#
# For example, when the list is sorted into alphabetical order, COLIN, which is
# worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN
# would obtain a score of 938 × 53 = 49714.
#
# What is the total of all the name scores in the file?


require './022_data.rb'

sorted_names = @names.sort

@letters_score = Hash[("A".."Z").each_with_index.map{ |letter, i| [letter, i + 1]}]

def get_name_score(name, position)
  letters_score = name.split('').reduce(0){ |total, val| total + @letters_score[val] }
  letters_score * (position + 1)
end

all_names_scores = sorted_names.each_with_index.map{ |name, position| get_name_score(name, position) }

puts all_names_scores.reduce(:+)


# Create a sorted names array
#
# Create a letter scores hash
#
# Split name's letters into an array and create new array with the
# corresponding value of the letter according to scores hash
#
# Sum these values, return multiplication of this value and the given position
#
# Apply created function to each of the sorted names array,
# creating a new array
#
# Sum all the values of previous array to return final number
