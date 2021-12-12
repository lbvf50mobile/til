# Leetcode: 416. Partition Equal Subset Sum.
# https://leetcode.com/problems/partition-equal-subset-sum/
# @param {Integer[]} nums
# @return {Boolean}
# TLE.
def can_partition(nums)
  sum = nums.sum
  @d = false # debugging
  return false if sum.odd?
  @dp = {}
  address = nums.join(?,) + ?| + ?0
  dfs(address)
end


def dfs(address)
  puts "I enter the #{address}." if @d
  return @dp[address] if ! @dp[address].nil?
  if /^\d+\|\d+/ === address
    num,sum = address.split(?|)
    answer = num.to_i == sum.to_i
    puts "Address #{address} is two digits #{num} and #{sum}, result is #{answer.inspect}" if @d
    puts "(Digits) Address #{address} is #{answer.inspect}." if @d
    @dp[address] = answer
    return answer
  end
  puts "Address #{address} contains array and number." if @d
  arr,sum = address.split(?|)
  arr = arr.split(?,).map(&:to_i)
  sum = sum.to_i
  arr_sum = arr.sum
  puts "Address #{address} has array #{arr} = #{arr_sum} and a #{sum}" if @d
  if arr_sum == sum
    puts "(Sum) Address #{address} is true." if @d
    @dp[address] = true
    return true
  end
  if arr_sum < sum
    puts "(Sum) Address #{address} is false." if @d
    @dp[address] = false
    return false
  end
  (0...arr.size - 1).each do |i|
    new_address = arr.reject.with_index{|_,j| j == i}.join(?,) + ?| + (sum + arr[i]).to_s
    if dfs(new_address)
      @dp[address] = true
      puts "(Loop) Address #{address} is true." if @d
      return true
    end
  end

  @dp[address] = false
  puts "(End) Address #{address} is False." if @d
  return false
end
