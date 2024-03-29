# Leetcode: 131. Palindrome Partitioning.
# https://leetcode.com/problems/palindrome-partitioning/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1537 ms, faster than 29.79% of Ruby online submissions for Palindrome Partitioning.
# Memory Usage: 254.5 MB, less than 8.51% of Ruby online submissions for Palindrome Partitioning.
# 2023.01.22 Daily Challenge.
# @param {String} s
# @return {String[][]}
def partition(s)
  @answer = []
  @s = s.chars
  @pth = [[]]
  bktrk(0)
  return @answer
end

def bktrk(i)
  # Two ways in backtracking.
  # 1. Add and close.
  # 2. Add and continue.
  # In every step push current char into the current
  # element of the @pth.
  if @s.size == i
    if @pth.last.empty? # Previos element is palindrome.
      array_of_strings = @pth.map(&:join)
      array_of_strings.pop() # Remove last empty element.
      @answer.push(array_of_strings)
    end
    return
  end
  j = @pth.size - 1
  el = @pth[j]
  el.push(@s[i])
  if pldr?(el)
    @pth.push([])
    bktrk(i+1)
    @pth.pop()
  end
  bktrk(i+1)
  el.pop()
end

def pldr?(x)
  a = x.join
  a == a.reverse
end
