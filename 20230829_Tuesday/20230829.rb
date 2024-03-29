# Leetcode: 2483. Minimum Penalty for a Shop. 
# https://leetcode.com/problems/minimum-penalty-for-a-shop/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 217 ms, faster than 100.00% of Ruby online submissions for Minimum
# Penalty for a Shop.
# Memory Usage: 221.8 MB, less than 33.33% of Ruby online submissions for
# Minimum Penalty for a Shop.
# 2023.08.29 Daily Challenge.
# @param {String} customers
# @return {Integer}
def best_closing_time(customers)
  # Copied from:
  # https://leetcode.com/problems/minimum-penalty-for-a-shop/solution/
  cur_p = customers.count(?Y)
  min_p = cur_p
  e_hr = 0
  customers.chars.each_with_index do |ch,i|
    if ?Y == ch
      cur_p -= 1
    else
      cur_p += 1
    end
    if cur_p < min_p
      e_hr = i + 1
      min_p = cur_p
    end
  end
  return e_hr
end
