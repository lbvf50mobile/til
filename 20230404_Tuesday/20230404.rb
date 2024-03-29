# Leetcode: 2405. Optimal Partition of String.
# https://leetcode.com/problems/optimal-partition-of-string/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 606 ms, faster than 50.00% of Ruby online submissions for Optimal
# Partition of String.
# Memory Usage: 226.8 MB, less than 50.00% of Ruby online submissions for
# Optimal Partition of String.
# 2023.04.04 Daily Challenge.
# @param {String} s
# @return {Integer}
def partition_string(s)
  @cnt = Array.new(26,0)
  @ans = 0
  s.chars.each do |ch|
    i = ch.ord - ?a.ord
    if 0 == @cnt[i]
      @cnt[i] = 1
    else
      @ans += 1
      erase()
      @cnt[i] = 1
    end
  end
  @ans += 1
  return @ans
end
def erase
  (0...@cnt.size).each do |i|
    @cnt[i] = 0
  end
end
