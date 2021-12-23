# Leetcode: 210. Course Schedule II.
# https://leetcode.com/problems/course-schedule-ii/
# @param {Integer} num_courses
# @param {Integer[][]} prerequisites
# @return {Integer[]}
def find_order(num_courses, prerequisites)
  @d = false
  @al = {}
  @depended = {}
  @n = num_courses
  prerequisites.each do |(second,first)|
    @al[first] ||= []
    @al[first].push(second)
    @depended[second] = true
  end
  puts "Input has #{@n} elements." if @d
  puts "Input: #{prerequisites}" if @d
  if @d
    @al.keys.each do |i|
      puts "#{i} = #{@al[i].inspect}"
    end
  end
  @ans = []
  @visited = {}
  (0...@n).each do |i|
    if (! @visited[i]) && (! @depended[i])
      bfs(i)
    end
  end
  @ans.size == @n ? @ans : []
end


def bfs(i)
  q = [i]
  @visited[i] = true
  while ! q.empty?
    el = q.pop
    @ans.push(el)
    next if !@al[el]
    @al[el].each do |j|
      if ! @visited[j]
        q.unshift(j)
        @visited[j] = true
      end
    end
  end
end
