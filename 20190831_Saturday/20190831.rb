p "alias x='ruby 20190831_Saturday/20190831.rb'" 

# Ruby: Alg, O(n) seach for 2 elements in array by SUM (or other related criteria).

# @VsevolodAvramov show to use each_with_object I rewrote the solution
# https://leetcode.com/problems/two-sum/discuss/254573/Fastest-Ruby-Solution-O(n)-36ms
# https://gist.github.com/lbvf50mobile/a3ccbe10d17d20e1fbaa3d6586e328af
def two_sum(n, target)
    n.each_with_object({}).with_index do |(v,o),j|
        i = o[target - v]
        return [i,j] if i
        o[v] = j
    end
    raise "Cannot Find Answer"
end

require 'minitest/autorun'

describe "two_sum" do
    it "should work" do
        assert_equal [3,5], two_sum([1,1,1,5,1,5,1,1,1],10)
    end
end 
