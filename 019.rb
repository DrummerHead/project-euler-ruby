# You are given the following information, but you may prefer to do some
# research for yourself.
#
#     1 Jan 1900 was a Monday.
#     Thirty days has September,
#     April, June and November.
#     All the rest have thirty-one,
#     Saving February alone,
#     Which has twenty-eight, rain or shine.
#     And on leap years, twenty-nine.
#     A leap year occurs on any year evenly divisible by 4, but not on a
#     century unless it is divisible by 400.
#
# How many Sundays fell on the first of the month during the twentieth century
# (1 Jan 1901 to 31 Dec 2000)?


require 'date'

start_date = Date.new(1901, 1, 1)
end_date = Date.new(2000, -1, -1)
sunday_first = start_date.step(end_date).select{|d| d.sunday? && d.day == 1}

puts sunday_first.length


# This was originally a one-liner but I wanted to be polite and make the code a
# little bit more clear. How it was:
#
# puts Date.new(1901, 1, 1).step(Date.new(2000, -1, -1)).select{|d| d.sunday? && d.day == 1}.length
#
# Also, this is just using the language instead of doing some group creations
# and comparisons, but the reason I'm doing all this is to learn the language
# and have fun, so I think this is ok :P
