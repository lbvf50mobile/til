# Leetcode: 763. Partition Labels.
# https://leetcode.com/problems/partition-labels/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 192 ms, faster than 7.32% of Ruby online submissions for Partition Labels.
# Memory Usage: 211.1 MB, less than 36.59% of Ruby online submissions for Partition Labels.
# @param {String} s
# @return {Integer[]}
def partition_labels(s)
  @counter = s.chars.each_with_object(Hash.new){|e,o| o[e] ||= 0; o[e] += 1}
  answer = []
  require "set"
  @chars = Set.new
  length = 0
  s.chars.each do |x|
    length += 1
    @chars.add(x)
    if get_length() == length
      answer.push(length)
      @chars.clear
      length = 0
    end
  end
  answer
end

def get_length()
  @chars.sum{|x| @counter[x]}
end
