# Leetcode: 97. Interleaving String.
# https://leetcode.com/problems/interleaving-string/
# @param {String} s1
# @param {String} s2
# @param {String} s3
# @return {Boolean}
def is_interleave(s1, s2, s3)
  return false if (s1.size + s2.size) != s3.size
  return false if counter(s1+s2) != counter(s3)
  @s1,@s2,@s3 = s1, s2, s3 # Save all varaiables as an object variables.
  # need to flip turns.
  @dp = Array.new(2) # turn 0 - s1, 1 - s2.  
    .map{ Array.new(s1.size+1).map{ Array.new(s2.size+1).map{Array.new(s3.size+1)}}}
  true == rec(0,0,0,0) || true == rec(1,0,0,0) # Start from first or start from second.
end

def counter(str)
  ans = Array.new(30, 0)
  str.chars.each{|x| ans[x.ord - ?a.ord] += 1}
  ans
end

def rec(turn,i,j,k)
  return  @dp[turn][i][j][k] if ! @dp[turn][i][j][k].nil?
  if @s1.size == i && @s2.size == j && @s3.size == k
    return @dp[turn][i][j][k] = true
  end
  if @s3.size == k 
    return @dp[turn][i][j][k] = false
  end
  if turn
    return @dp[turn][i][j][k] = rec0(i,j,k)
  else
    return @dp[turn][i][j][k] = rec1(i,j,k)
  end
end

def rec0(i,j,k)
  while @s1[i] == @s3[k]
  end
  return false
end


def rec1(i,j,k)
  while @s2[j] == @s3[k]
  end
  return false
end

