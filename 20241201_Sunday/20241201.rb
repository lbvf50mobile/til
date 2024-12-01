# Leetcode: 1346. 1346. Check If N and Its Double Exis
# https://leetcode.com/problems/check-if-n-and-its-double-exist/?envType=daily-question&envId=2024-12-01
# @param {Integer[]} arr
# @return {Boolean}
# fails [7,1,14,11]
def check_if_exist(arr)
  # Having index arr[i], need to find arr[j] == a[i]/2 where j > i.
  # That means need to have a hath table with a value as a key with maximum j.
  # The hash will have key and array_value, value as arr_index. In case of
  # dublicate new hash will be saved because j will be bigger.
  
  # Prepare hash.
  hash_vals = {}
  arr.each_with_index do |v,k|
    hash_vals[v] = k
  end
  # Seek for arr[j]*2 == arr[i] where i < j.
  arr.each_with_index do |v,k|
    return true if 0 == v%2 && hash_vals[v/2] && k < hash_vals[v/2] 
  end
  # found nothing.
  return false
end
