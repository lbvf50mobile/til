# Leetcode: 886. Possible Bipartition.
# https://leetcode.com/problems/possible-bipartition/
# @param {Integer} n
# @param {Integer[][]} dislikes
# @return {Boolean}
def possible_bipartition(n, dislikes)
  return false if 1 == n
  # Number of components must be more then 1.
  @aj = Array.new(n).map{ [] }
  @u = Array.new(n,false)
  dislikes.each do |a,b|
    @aj[a-1].push(b-1)
    @aj[b-1].push(a-1)
  end
  components = 0
  (0...n-1).each do |i|
    next if @u[i]
    components += 1
    p [i, components]
    q = [i]
    @u[i] = true
    while ! q.empty?
      x = q.shift()
      @aj[x].each do |y|
        next if @u[y]
        @u[y] = true
        q.push(y)
      end
    end
  end
  components > 1
end
