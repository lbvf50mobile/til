# Leetcode: 224. Basic Calculator.
# https://leetcode.com/problems/basic-calculator/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 697 ms, faster than 10.00% of Ruby online submissions for Basic Calculator.
# Memory Usage: 212.2 MB, less than 40.00% of Ruby online submissions for Basic Calculator.
# @param {String} s
# @return {Integer}
def calculate(s)
  # Based on:
  # https://leetcode.com/problems/basic-calculator/discuss/62344/Easy-18-lines-C%2B%2B-16-lines-Python
  # But with: 
  # https://leetcode.com/problems/basic-calculator/discuss/62344/Easy-18-lines-C++-16-lines-Python/1674262
  total = 0
  stack = [1,1]
  i = 0
  while i < s.size
    c = s[i]
    if ?0 <= c
      n = 0
      while i < s.size && ?0 <= s[i]
        n = n*10 + s[i].to_i
        i += 1
      end
      total += (stack.pop) * n
      i -= 1
      # https://leetcode.com/problems/basic-calculator/discuss/62344/Easy-18-lines-C++-16-lines-Python/1674262
    elsif ?( == c && ?- == s[i+1]
      ;
    elsif ?) == c
      stack.pop
    elsif ' ' != c
      stack.push(stack.last * (?- == c ? -1 : 1))
    end
    i += 1
  end
  return total
end
