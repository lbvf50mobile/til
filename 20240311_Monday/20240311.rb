# Leetcode: 791. Custom Sort String.
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/609/week-2-july-8th-july-14th/3813/
# = = = = = = = = = = = = = 
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = =
# Runtime: 77 ms, faster than 5.09% of Ruby online submissions for Custom Sort
# String.
# Memory Usage: 211.4 MB, less than 77.97% of Ruby online submissions for
# Custom Sort String.
# 2024.03.11 Daily Challenge.

# @param {String} order
# @param {String} str
# @return {String}
def custom_sort_string(order, str)
  weight = Array.new(26)
  # Fill first part of weight by indices.
  (0...order.size).each do |i|
    code = order[i].ord - ?a.ord
    weight[code] = i
  end
  # Fill last part of weights by the counter startign just after the last order index.
  counter = order.size
  (0...26).each do |i|
    if weight[i].nil?
      weight[i] = counter
      counter += 1
    end
  end
  str.chars.sort_by{|x| weight[x.ord - ?a.ord]}.join
end
