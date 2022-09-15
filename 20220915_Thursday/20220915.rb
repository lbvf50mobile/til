# Leetcode: 2007. Find Original Array From Doubled Array.
# https://leetcode.com/problems/find-original-array-from-doubled-array/
# @param {Integer[]} changed
# @return {Integer[]}
def find_original_array(changed)
  return [] if changed.size.odd?
  exclude = {}
  require 'set'
  values = Set.new(changed)
  zero_counter = 0
  answer = [] 
  changed.sort.each do |x|
    if 0 == x
      zero_counter += 1
    else
      next if exclude[x]
      if values.include?(x*2)
        exclude[x*2] = true
        answer.push(x)
      end
    end
  end
  if zero_counter.even? 
    answer = answer + ([0]*(zero_counter/2))
  end
  return answer if answer.size == changed.size/2
  return []
end
