# Leetcode: 476. Number Complement.
# https://leetcode.com/problems/number-complement/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# @param {Integer} num
# @return {Integer}
def find_complement(num)
  @d = false
  puts "#{num} input" if @d
  answer = 0 
  number_rank = 0
  while num != 0
    puts "It is #{num} and #{num/2}" if @d
    # Do not forget to invert! When 1 it is 0, when 0 it is 1.
    # Also need to put inverted value in the new place.
    # At the next number rank.
    answer = answer + (1 << number_rank) if 0 == num%2
    puts "answer is #{answer}" if @d
    num = num/2
    number_rank += 1
  end
  answer
end
