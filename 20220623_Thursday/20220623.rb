# Leetcode: 630. Course Schedule III.
# https://leetcode.com/problems/course-schedule-iii/
# @param {Integer[][]} courses
# @return {Integer}
# TLE.
def schedule_course(courses)
  # Based on:
  # https://leetcode.com/problems/course-schedule-iii/discuss/953918/Python-Max-Heap-Solution-with-detailed-explanation-and-comments
  crs = courses.sort_by{|x| x[1]}
  h = MaxHeap.new([])
  time = 0
  crs.each do |c|
    time += c[0]
    h.push(c[0])
    time -= h.pop() if(time > c[1])
  end
  h.size
end
