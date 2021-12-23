# Leetcode: 210. Course Schedule II.
# https://leetcode.com/problems/course-schedule-ii/
# @param {Integer} num_courses
# @param {Integer[][]} prerequisites
# @return {Integer[]}
def find_order(num_courses, prerequisites)
  @al = {}
  @n = num_courses
  prerequisites.each do |(second,first)|
    @al[first] = []
    @al[first].push(second)
  end
  @ans = []
  (0...@n).each do |i|
    @ans = []
    bfs(i)
    return @ans if @ans.size == @n
  end
  @ans
end


def bfs(i)
  q = [i]
  visited = {}
  visited[i] = true
  while ! q.empty?
    el = q.pop
    @ans.push(el)
    next if !@al[el]
    @al[el].each do |j|
      if ! visited[j]
        q.unshift(j)
        visited[j] = true
      end
    end
  end
end
