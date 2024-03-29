# Leetcode: 139. Word Break.
# https://leetcode.com/problems/word-break/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 74 ms, faster than 93.75% of Ruby online submissions for Word Break.
# Memory Usage: 211.2 MB, less than 20.83% of Ruby online submissions for Word
# Break.
# 2023.08.04 Daily Challenge.
# @param {String} s
# @param {String[]} word_dict
# @return {Boolean}
def word_break(s, word_dict)
  @dp = Array.new(s.size + 1)
  @dict = {}
  @s = s
  word_dict.each do |w|
    c = w[0]
    @dict[c] ||= []
    @dict[c].push w
  end
  return dfs(0)
end

def dfs(i)
  return @dp[i] if ! @dp[i].nil?
  if i == @s.size
    @dp[i] = true
    return true
  end
  c = @s[i]
  @dict[c] ||= []
  @dict[c].each do |w|
    if w.size <= (@s.size - i)
      part = @s[i...i+w.size]
      if part == w
        ans = dfs(i+w.size)
        if ans
          @dp[i] = true
          return true
        end
      end
    end
  end
  @dp[i] = false
  return false
end
