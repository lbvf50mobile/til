# Leetcode: 332. Reconstruct Itinerary.
# https://leetcode.com/problems/reconstruct-itinerary/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 73 ms, faster than 100.00% of Ruby online submissions for Reconstruct
# Itinerary.
# Memory Usage: 211.6 MB, less than 37.50% of Ruby online submissions for
# Reconstruct Itinerary.
# @param {String[][]} tickets
# @return {String[]}
def find_itinerary(tickets)
  # Based on:
  # https://leetcode.com/problems/reconstruct-itinerary/discuss/4041944/95.76-DFS-Recursive-and-Iterative
  @g =  Hash.new{ |h,k| h[k] = Array.new}
  tmp = tickets.sort{|a,b| b[0] == a[0] ? b[1] <=> a[1] : b[0] <=> a[0] }
  tmp.each do |s,d|
    @g[s].push(d)
  end
  @itn = []
  dfs("JFK")
  return @itn.reverse
end

def dfs(ap)
  while @g[ap] && (!@g[ap].empty?)
    tmp = @g[ap].pop()
    dfs(tmp)
  end
  @itn.push(ap)
end
