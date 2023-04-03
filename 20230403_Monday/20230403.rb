# Leetcode: 881. Boats to Save People.
# https://leetcode.com/problems/boats-to-save-people/
# @param {Integer[]} people
# @param {Integer} limit
# @return {Integer}
def num_rescue_boats(people, limit)
  ans = 0
  people.sort!
  i,j = 0, people.size-1
  curr = 0
  while i <= j
    # Try to add small.
    while i <= j && curr + people[i] <= limit
      curr += people[i]
      i += 1
    end
    # Try to add big.
    while i <= j && curr + people[j] <= limit
      curr += people[j]
      j -= 1
    end
    ans += 1
    curr = 0
  end
  return ans
end
