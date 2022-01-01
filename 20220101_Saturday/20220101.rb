# Leetcode: 312. Burst Balloons.
# https://leetcode.com/problems/burst-balloons/
# @param {Integer[]} nums
# @return {Integer}
# TLE.
def max_coins(nums)
  @h = {}
  dfs(nums.join(?,))
  @h[nums.join(?,)]
end


def dfs(str)
  return 0 if str.empty?
  return @h[str] if @h[str]
  arr = str.split(?,).map(&:to_i)
  answers = []
  (0...arr.size).each do |i|
    answers.push(get_value(arr,i) + dfs(remove_index(arr,i).join(?,)))
  end
  @h[str] = answers.max
  @h[str]
end

def get_value(array,i)
  if 1 == array.size
    return array[0]
  end
  if 0 == i
    return array[0] * array[1]
  end
  if array.size-1 == i
    return array[array.size-1]*array[array.size-2]
  end
  return array[i-1]*array[i]*array[i+1]
end

def remove_index(array,i)
  array.clone.tap{|x| x.delete_at(i)}
end

