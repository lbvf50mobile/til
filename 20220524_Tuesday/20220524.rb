# Leetcode: 32. Longest Valid Parentheses.
# https://leetcode.com/problems/longest-valid-parentheses/
# @param {String} s
# @return {Integer}
def longest_valid_parentheses(s)
  @s = s
  @d = true
  puts @s if @d
  # Index: Open bracket. Value: Close bracket index.
  @dp = Array.new(s.size,0)
  answer = 0
  # Valid parentheses could starts only from "(".
  (0...@s.size).reverse_each do |i|
    if ?( == @s[i]
      x = longest(i)
      puts "s[#{i}] length #{x}" if @d
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
    puts "for (#{i} )#{close} = lenght #{length}" if @d
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
    return j if 0 == l
    j += 1
  end
  return false
end
