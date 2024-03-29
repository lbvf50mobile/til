# Leetcode: 374. Guess Number Higher or Lower. 
# https://leetcode.com/problems/guess-number-higher-or-lower/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 148 ms, faster than 41.38% of Ruby online submissions for Guess Number Higher or Lower.
# Memory Usage: 211 MB, less than 20.69% of Ruby online submissions for Guess Number Higher or Lower.
# 2022.11.16 Daily Challenge.

# The guess API is already defined for you.
# @param num, your guess
# @return -1 if num is higher than the picked number
#          1 if num is lower than the picked number
#          otherwise return 0
# def guess(num)

def guessNumber(n)
  # Errichto: Binary Search tutorial (C++ and Python)
  # https://youtu.be/GU7DpgHINWQ
  l,h = 1,n
  while l <= h
    m = l + (h-l)/2
    ans = guess(m)
    if 0 == ans
      return m
    elsif -1 == ans
      h = m - 1
    else
      l = m + 1
    end
  end
  raise "Cannot find an answer."
end

