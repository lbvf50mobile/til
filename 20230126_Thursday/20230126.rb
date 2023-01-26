# Leetcode: 787. Cheapest Flights Within K Stops.
# https://leetcode.com/problems/cheapest-flights-within-k-stops/
# @param {Integer} n
# @param {Integer[][]} flights
# @param {Integer} src
# @param {Integer} dst
# @param {Integer} k
# @return {Integer}
# Error.
def find_cheapest_price(n, flights, src, dst, k)
  # Based on:
  # https://leetcode.com/problems/cheapest-flights-within-k-stops/discuss/686906/Python-Multipass-BFS-O(V2)-%2B-Dijkstra-with-SortedList-explained
  g = {}
  v = [[src,0,0]]
  mp = Float::INFINITY
  visited = {}
  visited[src] = true
  flights.each do |i,j,w|
    g[i] ||= []
    g[i].push([j,w])
  end
  while ! v.empty?
    c,vis,pr = v.shift()
    if pr <= mp && vis <= k && c != dst
      g[c].each do |j,np|
        next if visited[j]
        v.push([j,vis+1,pr + np])
      end
    end
    if dst == c
      mp = [mp,pr].min
    end
  end
  mp = -1 if Float::INFINITY == mp
  return mp
end
