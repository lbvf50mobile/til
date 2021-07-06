# Leetcode: Reduce Array Size to The Half.
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/608/week-1-july-1st-july-7th/3804/
# Accepted.
# Thanks God!
# @param {Integer[]} arr
# @return {Integer}
def min_set_size(arr)
  # First step need to create array of pairs array element and numbers of matches.
  matches = arr.each_with_object(Hash.new){|el,obj| obj[el] ||= 0; obj[el] += 1}.to_a
  # Then sort it descending by number of matches. We even get rid of elements, 
  # only amount of matches required.
    .map(&:last).sort_by{|x| -x}
  # Now move towards the array until sum of elements would be more then half size of input.
  half = arr.size.fdiv(2)
  number, sum = 0,0
  matches.each{|x| 
    number += 1
    sum += x
    return number if sum >= half
  }
  raise "Cannot find answer, there are no elements occured more then half."
end
