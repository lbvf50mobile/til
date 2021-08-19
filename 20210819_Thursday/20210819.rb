# Leetcode: 91. Decode Ways.
# https://leetcode.com/explore/challenge/card/august-leetcoding-challenge-2021/615/week-3-august-15th-august-21st/3902/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# @param {String} s
# @return {Integer}
def num_decodings(s)
  s = s.chars.map(&:to_i) # Convert string of digits into integer array.
  dp = Array.new(s.size+1,0) # Need to reach "end of string" postion, after last element.
  dp[0] = 1 # We able to reach first symbol only by one way.
  (0...s.size).each do |i|
    if i < s.size - 1 # Can test next symbol, it exists.
      if s[i] == 1 || s[i] == 2
        number = s[i]*10 + s[i+1]
        if number.between?(10,26)
          dp[i+2] += dp[i]
        end
      end
    end
    dp[i+1] += dp[i] if s[i] != 0
  end
  dp[s.size]
end
