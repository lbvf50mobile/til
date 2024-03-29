# Leetcode: 1491. Average Salary Excluding the Minimum and Maximum Salary.
# https://leetcode.com/problems/average-salary-excluding-the-minimum-and-maximum-salary/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 87 ms, faster than 43.24% of Ruby online submissions for Average
# Salary Excluding the Minimum and Maximum Salary.
# Memory Usage: 211 MB, less than 89.19% of Ruby online submissions for Average
# Salary Excluding the Minimum and Maximum Salary.
# 2023.05.01 Daily Challenge.
# @param {Integer[]} salary
# @return {Float}
def average(salary)
  min,max = salary.minmax
  return (salary.sum - min - max).fdiv(salary.size - 2)
end
