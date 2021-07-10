# Leetcode: 639. Decode Ways II.
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/609/week-2-july-8th-july-14th/3809/
# "**" fails.
# @param {String} s
# @return {Integer}
def num_decodings(s)
  dp = Array.new(s.size+1,0) # Need to find ways to reach a "terminated zero". That why size + 1.
  dp[0] = 1 # There is only one way to reach first symbol.
  amount = {'1*' => 9, '2*' => 6, '10' => 1, '11' => 1, '12' => 1, '13' => 1, 
   '14' => 1, '15' => 1, '16' => 1, '17' => 1, '18' => 1, '19' => 1, '20' => 1, '21' => 1, '22' => 1, '23' => 1, '24' => 1,
   '25' => 1, '26' => 1}
  (0...s.size).each do |i|
    # Working with one symbol.
    symbol = s[i]
    if ?* == symbol
      dp[i+1] += dp[i]*9
    end
    if symbol.ord.between?(?1.ord,?9.ord)
      dp[i+1] += dp[i]
    end

    if i > 0
      pair = s[i-1]+s[i]
      if amount[pair]
        dp[i+1] += dp[i] * amount[pair]
      end

    end

    # Round.
    dp[i+1] = dp[i+1] % (10**9 + 7)
  end
  return dp.last
end
