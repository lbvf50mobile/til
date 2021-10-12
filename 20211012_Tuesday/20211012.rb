# Leetcode: 374. Guess Number Higher or Lower.
# https://leetcode.com/problems/guess-number-higher-or-lower/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 115 ms, faster than 6.67% of Ruby online submissions for Guess Number Higher or Lower.
# Memory Usage: 209.7 MB, less than 28.89% of Ruby online submissions for Guess Number Higher or Lower.
# The guess API is already defined for you.
# @param num, your guess
# @return -1 if my number is lower, 1 if my number is higher, otherwise return 0
# def guess(num)

def guessNumber(n)
  # Solution based on the Binary Search.
  l,r = 1, n
  while l <= r
    mid = (l+r)/2
    ans = guess(mid)
    return mid if 0 == ans
    if 1 == ans
      l = mid + 1
    else
      r = mid - 1
    end
  end
  raise "Cannot find an answer guessNumber #{n}"
end
