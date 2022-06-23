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
    if time + c[0] <= c[1]
      time += c[0]
      h.push(c[0])
    else
      if h.size != 0 && c[0] < h.max
        time -= (h.pop)
        time += c[0]
        h.push(c[0])
      end
    end
  end
  h.size
end
