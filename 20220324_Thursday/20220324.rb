# Leetcode: 881. Boats to Save People.
# https://leetcode.com/problems/boats-to-save-people/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 236 ms, faster than 60.00% of Ruby online submissions for Boats to Save People.
# Memory Usage: 216 MB, less than 60.00% of Ruby online submissions for Boats to Save People.
# @param {Integer[]} people
# @param {Integer} limit
# @return {Integer}
def num_rescue_boats(people, limit)
  counter = 0
  people.sort!
  i,j = 0, people.size - 1
  while i <= j
    if i == j
      i += 1;
      j -= 1
    elsif people[i] + people[j] > limit
      j -= 1
    elsif people[i] + people[j] <= limit
      i += 1 
      j -= 1
    else
      raise "Unknown situation. #{i}, #{j}."
    end
      counter += 1
  end
  counter
end

