# Leetcode: 502. IPO.
# https://leetcode.com/problems/ipo/
# @param {Integer} k
# @param {Integer} w
# @param {Integer[]} profits
# @param {Integer[]} capital
# @return {Integer}
def find_maximized_capital(k, w, profits, capital)
  # Based on: 
  # https://leetcode.com/problems/ipo/solution/
  n = profits.size
  projects = capital.zip(profits).to_h
  q = []
  ptr = 0
  k.times do |i|
    while ptr < n && projects[ptr][0] <= w
      q.push(-projects[ptr][1])
      q.sort!
      ptr += 1
    end
    break if q.empty?
    w += -q.shift()
  end
  return w
end
