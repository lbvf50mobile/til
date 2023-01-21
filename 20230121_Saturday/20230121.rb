# Leetcode: 93. Restore IP Addresses.
# https://leetcode.com/problems/restore-ip-addresses/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 104 ms, faster than 50.00% of Ruby online submissions for Restore IP Addresses.
# Memory Usage: 211.2 MB, less than 10.00% of Ruby online submissions for Restore IP Addresses.
# 2023.01.21 Daily Challange.
# @param {String} s
# @return {String[]}
def restore_ip_addresses(s)
  @ans = []
  @s = s.chars.map(&:to_i)
  @arr_num = [0]
  @arr_str = [""]
  dfs(0)
  return @ans
end

def dfs(i)
  return if @arr_num.size > 4
  if i == @s.size && @arr_num.size == 4 && "" != @arr_str.last 
    @ans.push(@arr_str.join(?.))
  end
  return if i == @s.size
  old_num, old_str = @arr_num.last, @arr_str.last
  new_num, new_str = old_num*10 + @s[i], old_str + @s[i].to_s
  return if 255 < new_num
  return if /^0./ === new_str
  j = @arr_num.size - 1 # Fixed error. It is an index, need to decrease by one.
  # Extend and let next call continue extending.
  @arr_num[j],@arr_str[j] = new_num, new_str
  dfs(i+1)
  # Extand. And start new column.
  @arr_num[j],@arr_str[j] = new_num, new_str
  @arr_num.push(0); @arr_str.push("")
  dfs(i+1)
  @arr_num.pop(); @arr_str.pop()
  @arr_num[j],@arr_str[j] = old_num, old_str
end
