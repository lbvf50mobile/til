# Leetcode: 32. Longest Valid Parentheses.
# https://leetcode.com/problems/longest-valid-parentheses/
# @param {String} s
# @return {Integer}
def longest_valid_parentheses(s)
  @s = s
  @d = true
  answer = 0
  # Valid parentheses could starts only from "(".
  (0...@s.size).reverse_each do |i|
    if ?( == @s[i]
      x = longest(i)
      puts "#{i} = #{x}" if @d
      answer = x if x > answer
    end
  end
  answer
end

def longest(i)
  size = 0
  while true
    close = false
    close = find_close(i)
    break if ! close
    size += close - i + 1
    # Starting next turn.
    i += 1
    break if ! ?( == @s[i]
  end
  return size
end

def find_close(i)
  l = 1
  (i+1...@s.size).each do |j|
    c = @s[j]
    l += 1 if ?( == c 
    l -= 1 if ?) == c
    return j if 0 == l
  end
  return false
end
