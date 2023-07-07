# Leetcode: 2024. Maximize the Confusion of an Exam.
# https://leetcode.com/problems/maximize-the-confusion-of-an-exam/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1696 ms, faster than 100.00% of Ruby online submissions for Maximize
# the Confusion of an Exam.
# Memory Usage: 227.7 MB, less than 100.00% of Ruby online submissions for
# Maximize the Confusion of an Exam.
# 2023.07.07 Daily Challenge.
# @param {String} answer_key
# @param {Integer} k
# @return {Integer}
def max_consecutive_answers(answer_key, k)
  # Based on:
  # https://leetcode.com/problems/maximize-the-confusion-of-an-exam/solution/
  @ak, @k, @n = answer_key.chars, k, answer_key.size

  l,r = @k, @n
  while l < r
    m = (l + r + 1)/2
    if is_valid(m)
      l = m
    else
      r = m - 1
    end
  end
  return l
end

def is_valid(s)
  c = @ak[0...s].tally
  c.default = 0
  return true if c[?T] <= @k || c[?F] <= @k
  (s...@n).each do |i|
    c[@ak[i]] += 1
    c[@ak[i-s]] -= 1
    return true if c[?T] <= @k || c[?F] <= @k
  end
  return false
end
