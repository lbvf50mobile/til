# Leetcode: 2024. Maximize the Confusion of an Exam.
# https://leetcode.com/problems/maximize-the-confusion-of-an-exam/
# @param {String} answer_key
# @param {Integer} k
# @return {Integer}
def max_consecutive_answers(answer_key, k)
  # Based on:
  # https://leetcode.com/problems/maximize-the-confusion-of-an-exam/solution/
  @ak, @k, @n = answer_key, k, answer_key.size

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
  c = @ak.split[0...s].tally
  c.default = 0
  return true if [c[?T],c[?F]].min <= @k
  (s...@n).each do |i|
    c[@ak[i]] += 1
    c[@ak[i-s]] -= 1
    return true if [c[?T],c[?F]].min <= @k
  end
  return false
end
