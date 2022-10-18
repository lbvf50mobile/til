# Leetcode: 38. Count and Say.
# https://leetcode.com/problems/count-and-say/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 302 ms, faster than 9.68% of Ruby online submissions for Count and Say.
# Memory Usage: 215.2 MB, less than 61.29% of Ruby online submissions for Count and Say.
# @param {Integer} n
# @return {String}
def count_and_say(n)
  return "1" if 1 == n
  return "11" if 2 == n
  return "21" if 3 == n
  return "1211" if 4 == n
  prev = count_and_say(n-1)
  answer = ""
  counter = 1
  (1...prev.size).each do |i|
    if prev[i-1] == prev[i]
      counter += 1
    else
      answer += counter.to_s + prev[i-1]
      counter = 1
    end
  end
  answer += counter.to_s + prev[-1]
  return answer
end
