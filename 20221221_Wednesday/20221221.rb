# Leetcode: 886. Possible Bipartition.
# https://leetcode.com/problems/possible-bipartition/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 412 ms, faster than 40.74% of Ruby online submissions for Possible Bipartition.
# Memory Usage: 215 MB, less than 18.52% of Ruby online submissions for Possible Bipartitio
# 2022.12.21 Daily Challenge.
# @param {Integer} n
# @param {Integer[][]} dislikes
# @return {Boolean}
def possible_bipartition(n, dislikes)
  # Based on hints:
  # https://leetcode.com/problems/possible-bipartition/solution/
  @aj = Array.new(n).map{ Array.new(0) }
  dislikes.each do |a,b|
    @aj[a-1].push(b-1)
    @aj[b-1].push(a-1)
  end
  colors = Array.new(n,0)
  (0...n).each do |i|
    next if 0 != colors[i]
    q = [[i,1]]
    colors[i] = 1
    while ! q.empty?
      x,c = q.shift()
      nc = (c == 1) ? 2 : 1
      @aj[x].each do |y|
        return false if c == colors[y]
        next if nc == colors[y]
        colors[y] = nc
        q.push([y,nc])
      end
    end
  end
  return true
end
