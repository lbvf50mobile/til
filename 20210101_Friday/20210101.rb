p "alias x='ruby 20210101_Friday/20210101.rb'" 

# Leetcode: 712. Minimum ASCII Delete Sum for Two Strings.
# https://leetcode.com/problems/minimum-ascii-delete-sum-for-two-strings/
# @param {String} s1
# @param {String} s2
# @return {Integer}
def minimum_delete_sum(s1, s2)
   @dp = Array.new(s1.size).map{ Array.new(s2.size)}
   @s1 = s1.chars.map(&:ord)
   @s2 = s2.cahrs.map(&:ord)
   rec(0,0)   
end

def rec(i,j)
	return 0 if i >=  @s1.size && j >= @s2.size
	return @dp[i][j] if @dp[i][j]
	ans = 0
	if i < @s1.size && j >=  @s2.size
		ans = @s1[i..-1].sum
	elsif i >=  @s1.size && j <  @s2.size
		ans = @s2[j..-1].sum
	elsif @s1[i] == @s2[j]
		while @s1[i+1] == @s2[j+1] && i+1 < @s1.size && j+1 < @s2.size
			i += 1; j += 1
		end
		ans = rec(i+1, j+1)
	else
		variants = []
		variants.push(@s1[i] + rec(i+1,j))
		variants.push(@s2[j] + rec(i,j+1))
		variants.push(@s1[i]+@s2[j] + rec(i+1,j+1))
		ans = variants.min
	end
	@dp[i][j] = ans
end
