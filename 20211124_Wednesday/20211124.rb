# Leetcode: 986. Interval List Intersections.
# https://leetcode.com/problems/interval-list-intersections/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 121 ms, faster than 18.75% of Ruby online submissions for Interval List Intersections.
# Memory Usage: 210.6 MB, less than 12.50% of Ruby online submissions for Interval List Intersections.
# @param {Integer[][]} first_list
# @param {Integer[][]} second_list
# @return {Integer[][]}
def interval_intersection(first_list, second_list)
  answer = []
  return answer if first_list.empty? || second_list.empty?
  i,j = 0,0
  while i < first_list.size && j < second_list.size
    a,b = first_list[i], second_list[j]
    # Bigest first. Rightest left.
    left = a.first > b.first ? a.first : b.first
    # Smallest last. Leftest right.
    right = a.last < b.last ? a.last : b.last
    answer.push([left,right]) if in_both(a,b,left,right)
    # Moving pointers.
    if a.last == b.last
      i += 1; j += 1
    elsif a.last < b.last
      i += 1
    else
      j += 1
    end
  end
  answer
end

def in_both(a,b,left,right)
  do_left = left.between?(*a) && left.between?(*b)
  do_right = right.between?(*a) && right.between?(*b)
  do_left && do_right
end

