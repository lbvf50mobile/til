p "alias x='ruby 20201204_Friday/20201204.rb'" 
# Leetcode: 1191. K-Concatenation Maximum Sum.
# https://leetcode.com/problems/k-concatenation-maximum-sum/
# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer}
# fails. 
# [-5,-2,0,0,3,9,-2,-5,4]
# 5
def k_concatenation_max_sum(arr, k)
    total_sum = arr.sum * k
    sum = 0
    max_sum = 0
    tmp_arr = arr
    tmp_arr = arr + arr if k > 1
    tmp_arr.each do |x|
        sum = sum + x
        sum = x if x > sum
        max_sum = sum if sum > max_sum
    end
    [max_sum,total_sum].max % (10**9 + 7)
    
end
p k_concatenation_max_sum([-5,-2,0,0,3,9,-2,-5,4],5)