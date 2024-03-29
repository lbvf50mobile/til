# Leetcode: 352. Data Stream as Disjoint Intervals.
# https://leetcode.com/problems/data-stream-as-disjoint-intervals/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 606 ms, faster than 100.00% of Ruby online submissions for Data Stream as Disjoint Intervals.
# Memory Usage: 236.9 MB, less than 100.00% of Ruby online submissions for Data Stream as Disjoint Intervals.
# 2023.01.28 Daily Challenge.
class SummaryRanges
  # Based on:
  # https://leetcode.com/problems/data-stream-as-disjoint-intervals/discuss/347973/Concise-python.-O(1)-add-O(nlgn)-get.-No-union-find-no-heap.
    def initialize()
      require 'set'
      @x = Set.new
        
    end


=begin
    :type value: Integer
    :rtype: Void
=end
    def add_num(value)
      @x.add(value)
    end


=begin
    :rtype: Integer[][]
=end
    def get_intervals()
      ans = []
      arr = @x.to_a.sort
      arr.each do |v|
        if ans.empty? || ans[-1][-1]+1 < v
          ans.push([v,v])
        else
          ans[-1][-1] = v
        end
      end
      return ans
    end


end

# Your SummaryRanges object will be instantiated and called as such:
# obj = SummaryRanges.new()
# obj.add_num(value)
# param_2 = obj.get_intervals()
