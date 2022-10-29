# Leetcode: 2136. Earliest Possible Day of Full Bloom.
# https://leetcode.com/problems/earliest-possible-day-of-full-bloom/
# @param {Integer[]} plant_time
# @param {Integer[]} grow_time
# @return {Integer}
def earliest_full_bloom(plant_time, grow_time)
  cur_plant_time = 0
  result = 0
  indices = grow_time.map.with_index{|x,i| [x,i]}.sort_by{|x| -x[1]}.map(&:last)
  indices.each do |i|
    cur_plant_time += plant_time[i]
    result = [result, cur_plant_time + grow_time[i]].max
  end
  return result
end
