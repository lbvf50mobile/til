# Leetcode: 1539. Kth Missing Positive Number.
# https://leetcode.com/problems/kth-missing-positive-number/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 75 ms, faster than 86.36% of Ruby online submissions for Kth Missing Positive Number.
# Memory Usage: 211.3 MB, less than 77.27% of Ruby online submissions for Kth Missing Positive Number.
# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer}
def find_kth_positive(arr, k)
  # Caluclating gaps between last unmissed and current element.
  
  # Save last number that is not missed.
  # If starting from 1 it coung to be 0.
  last = 0
  # Counter of missed number.
  counter = 0
  # Iterate over elements in array.
  # Calculating amount of vissed number by: curr - last - 1.
  # If there are NO missed numbers keep on moving.
  # If there are - implement some math.
  arr.each do |x|
    missed = x - last - 1 # Amount of missed elements.
    if 0 != missed
      new_counter = counter + missed
      if k <= new_counter
        diff = k - counter
        return last + diff
      end
      counter = new_counter
    end
    last = x
  end
  return last + (k - counter)
end
