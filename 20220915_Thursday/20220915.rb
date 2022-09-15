# Leetcode: 2007. Find Original Array From Doubled Array.
# https://leetcode.com/problems/find-original-array-from-doubled-array/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1005 ms, faster than 100.00% of Ruby online submissions for Find Original Array From Doubled Array.
# Memory Usage: 234.2 MB, less than 100.00% of Ruby online submissions for Find Original Array From Doubled Array.
# Completion Streak: 444 Days.
# @param {Integer[]} changed
# @return {Integer[]}
def find_original_array(changed)
  return [] if changed.size.odd?
  counter = changed.tally
  answer = [] 
  changed.uniq.sort.each do |x|
    if 0 == x
      ;
    else
      if counter[x*2] && counter[x*2] >= counter[x] 
        answer.push(*([x]*counter[x]))
        counter[x*2] -= counter[x]
      end
    end
  end
  zero_counter = counter[0] || 0
  if zero_counter.even? 
    answer = answer + ([0]*(zero_counter/2))
  end
  return answer if answer.size == changed.size/2
  return []
end
