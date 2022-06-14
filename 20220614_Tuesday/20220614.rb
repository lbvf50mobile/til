# Leetcode: 583. Delete Operation for Two Strings.
# https://leetcode.com/problems/delete-operation-for-two-strings/
# @param {String} word1
# @param {String} word2
# @return {Integer}
def min_distance(word1, word2)
  w1,w2 = word1, word2
  @dp = {}
  caller(w1,w2)
end

def rec(w1,w2)
  # What if there is a solution?
  return @dp[w1][w2] if @dp[w1] && @dp[w1][w2]
  # What if the w1 generate for a first time?
  @dp[w1] ||= {}
  # Words are the same, there is nothing to calculate!
  if w1 == w2
    @dp[w1][w2] = 0
    return 0
  end
  # The w1 is empty, need to remove all chars from the w2.
  # It would be an answer.
  if w1.empty?
    @dp[w1][w2] = w2.size
    return w2.size
  end
  # Each string contains charaters that represented in both of them.
  a1,a2 = w1.chars, w2.chars
  h1 = a1.each_with_object(Hash.new){|e,o| o[e] ||= true}
  h2 = a2.each_with_object(Hash.new){|e,o| o[e] ||= true}
  a1clear = a1.select{|x| h1[x] && h2[x]}
  a2clear = a2.select{|x| h1[x] && h2[x]}
  # Number of steps need to implement any way. Remove char uniq for a string.
  need_to_have = (a1.size + a2.size) - (a1clear.size + a2clear.size)
  # Remove same from the back and from the front.
  while (!a1clear.empty?) && (!a2clear.empty?) && a1clear[0] == a2clear[0]
    a1clear.shift
    a2clear.shift
  end
  while (!a1clear.empty?) && (!a2clear.empty?) && a1clear[-1] == a2clear[-1]
    a1clear.pop
    a2clear.pop
  end
  if a1clear.empty? || a2clear.empty?
    @dp[w1][w2] = need_to_have + caller(a1clear.join,a2clear.join)
    return @dp[w1][w2]
  end
  wn1,wn2 = a1clear.join, a2clear.join
  steps = [caller(wn1[1..-1], wn2), caller(wn1,wn2[1..-1]), caller(wn1[1..-1],wn2[1..-1])].min + need_to_have
  @dp[w1][w2] = steps
end

def caller(w1,w2)
  if w1 < w2
    rec(w1,w2)
  else
    rec(w2,w1)
  end
end
