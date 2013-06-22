one = [nil, 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
teens = ['ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
ten = [nil, 'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

one.each do |hun|
  ten.each_with_index do |ten, ten_index|
    one.each_with_index do |one, one_index|
      if hun
        print "#{hun} hundred "
        print "and " if one or ten
      end
      if ten_index == 1
        print "#{teens[one_index]}\n"
      else
        print "#{ten} #{one}\n"
      end
    end
  end
end

puts "one thousand"
