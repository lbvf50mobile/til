# Leetcode: 97. Interleaving String.
# https://leetcode.com/problems/interleaving-string/
# @param {String} s1
# @param {String} s2
# @param {String} s3
# @return {Boolean}
def is_interleave(s1, s2, s3)
  return false if (s1.size + s2.size) != s3.size
  return false if counter(s1+s2) != counter(s3)
  @d = true
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
  puts "M#{turn} #{i},#{j},#{k}" if @d
  return  @dp[turn][i][j][k] if ! @dp[turn][i][j][k].nil?
  puts "-M#{turn} #{i},#{j},#{k}" if @d
  if @s1.size == i && @s2.size == j && @s3.size == k
    return @dp[turn][i][j][k] = true
  end
  if @s3.size == k 
    return @dp[turn][i][j][k] = false
  end
  if 0 == turn # Zero is truly in Ruby!
    puts "Call S1 and S3" if @d
    return @dp[turn][i][j][k] = rec0(i,j,k)
  else
    puts "Call S2 and S3" if @d
    return @dp[turn][i][j][k] = rec1(i,j,k)
  end
end
def rec0(i,j,k)
  puts "S1 #{i},#{j},#{k}" if @d
  while @s1[i] == @s3[k] && i < @s1.size && k < @s3.size
    i+=1; k+=1;
    return true if rec(1,i,j,k)
  end
  return false
end
def rec1(i,j,k)
  puts "S2 #{i},#{j},#{k}" if @d
  while @s2[j] == @s3[k] && j < @s2.size && k < @s3.size
    j+=1; k += 1;
    return true if rec(0,i,j,k)
  end
  return false
end

