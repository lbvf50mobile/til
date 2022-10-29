# Leetcode: 2136. Earliest Possible Day of Full Bloom.
# https://leetcode.com/problems/earliest-possible-day-of-full-bloom/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1249 ms, faster than 50.00% of Ruby online submissions for Earliest Possible Day of Full Bloom.
# Memory Usage: 227.8 MB, less than 50.00% of Ruby online submissions for Earliest Possible Day of Full Bloom.
# 2022.10.29 Daily Challenge.
# @param {Integer[]} plant_time
# @param {Integer[]} grow_time
# @return {Integer}
def earliest_full_bloom(plant_time, grow_time)
  # Based on:
  # https://leetcode.com/problems/earliest-possible-day-of-full-bloom/solution/
  cur_plant_time = 0
  result = 0
  indices = grow_time.map.with_index{|x,i| [x,i]}.sort_by{|x| -x[0]}.map(&:last)
  indices.each do |i|
    cur_plant_time += plant_time[i]
    result = [result, cur_plant_time + grow_time[i]].max
  end
  return result
end
