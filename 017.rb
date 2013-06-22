# If the numbers 1 to 5 are written out in words: one, two, three, four, five,
# then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out
# in words, how many letters would be used?
#
# Note: Do not count spaces or hyphens. For example, 342 (three hundred and
# forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20
# letters. The use of "and" when writing out numbers is in compliance with
# British usage.


one = [nil, 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
teens = ['ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
ten = [nil, 'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

@all = ''

one.each do |hun|
  ten.each_with_index do |ten, ten_index|
    one.each_with_index do |one, one_index|
      if hun
        @all += "#{hun} hundred "
        @all += "and " if one or ten
      end
      if ten_index == 1
        @all += "#{teens[one_index]}\n"
      else
        @all += "#{ten} #{one}\n"
      end
    end
  end
end

@all += "one thousand"

all_no_whitespace = @all.gsub(/\s/, '')
puts all_no_whitespace
puts all_no_whitespace.length
