# Leetcode: 743. Network Delay Time. 
# https://leetcode.com/problems/network-delay-time/
# @param {Integer[][]} times
# @param {Integer} n
# @param {Integer} k
# @return {Integer}
def network_delay_time(times, n, k)
  # Using BFS and sum times.
  # Create adjacency list.
  @d = false
  al = Array.new(n+1).map{ Hash.new}
  times.each do |(from,to,time)|
    al[from][to] = time
  end
  # BFS.
  visited = {}
  q = [[k,0]]
  visited[k] = true
  puts "Start #{k}; Search #{n}" if @d
  while ! q.empty?
    x,t = q.shift
    puts "cur #{x} and time is #{t}" if @d
    al[x].keys.each do |nxt|
      if ! visited[nxt]
        new_time = t + al[x][nxt]
        return new_time if nxt == n
        visited[nxt] = true
        q.push([nxt,new_time])
      end
    end
  end
  # If fail return -1;
  return -1
end
