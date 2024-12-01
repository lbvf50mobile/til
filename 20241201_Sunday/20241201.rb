# Leetcode: 1346. Check If N and Its Double Exist.
# https://leetcode.com/problems/check-if-n-and-its-double-exist/?envType=daily-question&envId=2024-12-01
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 3 ms, faster than 43.48% of Ruby online submissions for Check If N
# and Its Double Exist.
# Memory Usage: 212.4 MB, less than 7.14% of Ruby online submissions for Check
# If N and Its Double Exist.
# @param {Integer[]} arr
# @return {Boolean}
def check_if_exist(arr)
  # Need to read  description carefully!
  return true if 1 < arr.count(0)
  # Prepare hash.
  hash_vals = {}
  arr.each_with_index do |v,k|
    hash_vals[v] = k
  end
  # Seek for arr[j]*2 == arr[i] where i != j. <== Here was an error.
  arr.each_with_index do |v,k|
    return true if 0 == v%2 && hash_vals[v/2] && k != hash_vals[v/2] 
  end
  # found nothing.
  return false
end
