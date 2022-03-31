# Leetcode: 410. Split Array Largest Sum.
# https://leetcode.com/problems/split-array-largest-sum/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 160 ms, faster than 16.67% of Ruby online submissions for Split Array Largest Sum.
# Memory Usage: 211.1 MB, less than 33.33% of Ruby online submissions for Split Array Largest Sum.
# @param {Integer[]} nums
# @param {Integer} m
# @return {Integer}
def split_array(nums, m)
  @d = false
  # Based on: https://leetcode.com/problems/split-array-largest-sum/discuss/1899733/Python-Binary-Search-Solution
  @nums, @m, = nums, m
  start, end_ = 0, @nums.sum
  puts "start = #{start}, end = #{end_}" if @d
  ans = -1
  while start <= end_
    mid = start + (end_-start)/2
    puts "start = #{start}, end = #{end_} mid = #{mid}" if @d
    if check(mid)
      ans = mid
      end_ = mid - 1
    else
      start = mid + 1
    end
  end
  puts "#{ans}" if @d
  ans
end

def check(mid)
  sumz,c = 0, 1
  @nums.each do |el|
    if el + sumz <= mid
      sumz += el
    else
      c += 1
      return false if c > @m || el > mid
      sumz = el
    end
  end
  true
end
