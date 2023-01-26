# Leetcode: 787. Cheapest Flights Within K Stops.
# https://leetcode.com/problems/cheapest-flights-within-k-stops/
# @param {Integer} n
# @param {Integer[][]} flights
# @param {Integer} src
# @param {Integer} dst
# @param {Integer} k
# @return {Integer}
# TLE.
def find_cheapest_price(n, flights, src, dst, k)
  # Based on:
  # https://leetcode.com/problems/cheapest-flights-within-k-stops/discuss/686906/Python-Multipass-BFS-O(V2)-%2B-Dijkstra-with-SortedList-explained
  g = {}
  q = [[src,0,0]]
  ans = Float::INFINITY
  # visited = {}
  # visited[src] = true
  flights.each do |from,to,price|
    g[from] ||= []
    g[from].push([to,price])
  end
  while ! q.empty?
    i,n,pr = q.shift()
    if pr <= ans && n <= k && i != dst
      (g[i] || []).each do |j,np|
        # Why need to comment this line?
        # How it happens that it is possible
        # to visit a city twice?
        # Because with this line a city could be already
        # wisited from a more expencive one during BFS.
        # next if visited[j]
        q.push([j,n+1,pr + np])
        # visited[j] = true
      end
    end
    if dst == i
      ans = [ans,pr].min
    end
  end
  ans = -1 if Float::INFINITY == ans
  return ans
end
