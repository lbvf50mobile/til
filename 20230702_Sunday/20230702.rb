# Leetcode: 1601. Maximum Number of Achievable Transfer Requests.
# https://leetcode.com/problems/maximum-number-of-achievable-transfer-requests/
# @param {Integer} n
# @param {Integer[][]} requests
# @return {Integer}
def maximum_requests(n, requests)
  # Based on:
  # https://leetcode.com/problems/maximum-number-of-achievable-transfer-requests/solution/
  ans = 0
  mask = 0
  while (mask < (1 << requests.size)) != 0
    p mask
    indegree = Array.new(n,0)
    pos = requests.size - 1
    bit_count = mask.digits(2).count(1)
    if bit_count <= ans
      mask += 1
      next
    end

    curr = mask
    while curr > 0
      indegree[requests[pos][0]] -= 1
      indegree[requests[pos][1]] += 1
      # # # # #
      curr >>= 1
      pos -= 1
    end

    flag = true
    (0...n).each do |i|
      next if indegree[i] == 0
      flag = false
      break
    end

    answer = bit_count if flag

    # # # # #
    mask += 1
  end
  return ans
end
