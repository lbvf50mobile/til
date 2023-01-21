# Leetcode: 93. Restore IP Addresses.
# https://leetcode.com/problems/restore-ip-addresses/
# @param {String} s
# @return {String[]}
def restore_ip_addresses(s)
  @ans = []
  @s = s.chars.map(&:to_i)
  @num = 0
  @str = ""
  @arr = []
  dfs(0)
  return @ans.uniq
end

def dfs(i)
  p [i,@num,@str,@arr]
  if @s.size == i
    if "" == @str && 0 == @num && 4 == @arr.size
      @ans.push(@arr.join(?.))
    end
    return
  end
  return if @num > 255
  return if 0 == @num & @str.size > 1
  return if 4 < @arr.size
  # Update current element.
  old_num, old_str = @num, @str 
  @num = (@num*10) + @s[i] 
  @str = @str + @s[i].to_s
  dfs(i+1)
  @num, @str = old_num, old_str
  # Push current element.
  if "" != @str
    old_num, old_str = @num, @str 
    @arr.push(@str); 
    @str = @s[i].to_s 
    @num = @s[i]
    dfs(i+1)
    @num, @str = old_num, old_str
    @arr.pop(); # ! important.
  end
end
