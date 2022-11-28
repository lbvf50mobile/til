# Leetcode: 2225. Find Players With Zero or One Losses.
# https://leetcode.com/problems/find-players-with-zero-or-one-losses/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 667 ms, faster than 92.86% of Ruby online submissions for Find Players With Zero or One Losses.
# Memory Usage: 230.9 MB, less than 92.86% of Ruby online submissions for Find Players With Zero or One Losses.
# 2022.11.28 Daily Challenge.
# @param {Integer[][]} matches
# @return {Integer[][]}
def find_winners(matches)
  h = {} # Contains array [total, win, lose];
  matches.each do |w,l|
    h[w] ||= [0,0,0]
    h[l] ||= [0,0,0]
    h[w][0] += 1
    h[w][1] += 1
    h[l][0] += 1
    h[l][2] += 1
  end
  answer = [[],[]]
  h.keys.each do |i|
    if h[i][0] > 0
      if 0 == h[i][2] 
        answer[0].push(i)
      end
      if 1 == h[i][2]
        answer[1].push(i)
      end
    end
  end
  answer[0].sort!
  answer[1].sort!
  return answer
end
