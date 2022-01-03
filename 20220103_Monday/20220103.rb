# Leetcode: 997. Find the Town Judge.
# https://leetcode.com/problems/find-the-town-judge/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 100 ms, faster than 82.61% of Ruby online submissions for Find the Town Judge.
# Memory Usage: 212 MB, less than 52.17% of Ruby online submissions for Find the Town Judge.
# @param {Integer} n
# @param {Integer[][]} trust
# @return {Integer}
def find_judge(n, trust)
  trust_arr = Array.new(n+1,0)
  trusted_arr = Array.new(n+1,0)
  trust.each do |(user_trust, user_trusted)|
    trust_arr[user_trust] += 1
    trusted_arr[user_trusted] += 1
  end
  (1..n).each do |i|
    return i if 0 == trust_arr[i] && (n-1) == trusted_arr[i]
  end
  return -1
end
