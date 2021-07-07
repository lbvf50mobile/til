# Leetcode: Kth Smallest Element in a Sorted Matrix.
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/608/week-1-july-1st-july-7th/3805/
# Accepted.
# Thanks God!
# @param {Integer[][]} matrix
# @param {Integer} k
# @return {Integer}
def kth_smallest(matrix, k)
  matrix.flatten.sort[k-1]
end
