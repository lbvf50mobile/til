# Leetcode: 32. Longest Valid Parentheses.
# https://leetcode.com/problems/longest-valid-parentheses/
# @param {String} s
# @return {Integer}
def longest_valid_parentheses(s)
  @s = s
  @d = true
  puts @s if @d
  # Index: Open bracket. Value: Close bracket index.
  @dp = Array.new(s.size,false)
  answer = 0
  # Valid parentheses could starts only from "(".
  (0...@s.size).reverse_each do |i|
    if ?( == @s[i]
      x = longest(i) 
      answer = x if x > answer
    end
  end
  answer
end

def longest(i)
  start = i
  size = 0
  while true
    close = false
    close = find_close(i)
    break if ! close
    length = close - i + 1
    size += length 
    # Starting next turn.
    i = close + 1
    break if ! ?( == @s[i]
  end
  # Closing bracket is at the.
  @dp[start] = start + size - 1 if size > 0
  puts "dp[#{start}] = #{@dp[start]}" if @d && size > 0

  return size
end

def find_close(i)
  l = 1
  j = i + 1
  while j < @s.size
    c = @s[j]
    l += 1 if ?( == c 
    l -= 1 if ?) == c
    if l.zero?
      # What if there is dp jump?
      return @dp[j+1] if @dp[j+1]
      return j
    end
    j += 1
    # Next position is start of dp jump.
    j = @dp[j] + 1 if @dp[j]
  end
  return false
end
