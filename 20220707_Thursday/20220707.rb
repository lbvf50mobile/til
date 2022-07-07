# Leetcode: 97. Interleaving String.
# https://leetcode.com/problems/interleaving-string/
# @param {String} s1
# @param {String} s2
# @param {String} s3
# @return {Boolean}
def is_interleave(s1, s2, s3)
  @s1,@s2,@s3 = s1, s2, s3
  # need to flip turns.
  @dp = {} 
  rec(true,0,0,0) || rec(false,0,0,0)
end

def rec(turn,i,j,k)
  label =  "#{turn.inspect},#{i},#{j},#{k}"
  return @dp[label] if @dp[label]
  if @s1.size == i && @s2.size == j && @s3.size == k
    @dp[label] = true
    return true
  end
  if turn
    while @s1[i] == @s3[k]
      if true == rec(false,i+1, j, k+1)
        @dp[label] = true
        return true
      end
      i += 1; k += 1;
    end
    @dp[label] = false
    return false
  else
    while @s1[j] == @s3[k]
      if true == rec(true,i, j+1, k+1)
        @dp[label] = true
        return true
      end
      j += 1; k += 1;
    end
    @dp[label] = false
    return false
  end
end
