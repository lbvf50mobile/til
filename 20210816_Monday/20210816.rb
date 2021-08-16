# Leetcode: 76. Minimum Window Substring.
# https://leetcode.com/explore/challenge/card/august-leetcoding-challenge-2021/615/week-3-august-15th-august-21st/3891/
# https://leetcode.com/problems/minimum-window-substring/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# @param {String} s
# @param {String} t
# @return {String}
def min_window(s, t)
  return "" if s.size < t.size

  if 1 == t.size
    return t if s.include?(t)
    return ""
  end

  desirable = Hash.new()
  desirable.default = 0

  t.chars.each do |char|
    desirable[char] ||= 0
    desirable[char] += 1
  end
  
  ans = nil

  i,j = 0,0

  current = Hash.new()
  current.default = 0
  

  current[s[0]] ||= 0
  current[s[0]] = 1

  while i < s.size
    filled = j-i+1 < t.size ? false : contains(desirable, current)
    if filled
      tmp = s[i..j]
      ans = tmp if ans.nil?
      ans = tmp if tmp.size < ans.size
    end
    if j < s.size - 1 && (!filled)
      j += 1
      current[s[j]] ||= 0
      current[s[j]] += 1
    else
      current[s[i]] -= 1
      i += 1
    end
  end


  ans ? ans : "" 
end


def contains(desirable, current)
  desirable.keys.each do |x|
    return false if current[x] < desirable[x]
  end
  return true
end
