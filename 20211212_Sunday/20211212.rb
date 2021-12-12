# Leetcode: 416. Partition Equal Subset Sum.
# https://leetcode.com/problems/partition-equal-subset-sum/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 2692 ms, faster than 5.41% of Ruby online submissions for Partition Equal Subset Sum.
# Memory Usage: 242.7 MB, less than 40.54% of Ruby online submissions for Partition Equal Subset Sum.
# @param {Integer[]} nums
# @return {Boolean}
# 01/24/2020 01:33
# 12/13/2021 03:29
def can_partition(nums)
    sum = nums.sum
    return false if sum.odd?
    size = sum/2
    
    dp = Array.new(nums.size).map{ Array.new(size+1,0)}
    
    (0..size).each do |col|
        value = nums[0]
        dp[0][col] = value if value <= col
    end
    
    (1...nums.size).each do |row|
        value = nums[row]
        (0..size).each do |col|
            tmp = []
            tmp.push dp[row - 1][col]
            tmp.push(dp[row - 1][col - value] + value) if value <= col
            dp[row][col] = tmp.max
        end
    end
    
    # dp.each{|x| puts x.inspect}
    
    dp.last.last == size
    
end
