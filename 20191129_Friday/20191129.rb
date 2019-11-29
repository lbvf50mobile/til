p "alias x='ruby 20191129_Friday/20191129.rb'" 

# Ruby: mid = (x+y) >> 1;

# https://gist.github.com/lbvf50mobile/57f3a26c2dc2401d8efd674369e2da0f
# https://leetcode.com/problems/longest-increasing-subsequence/discuss/438862/Python-short-readable-NLogN-beats-90



def mid x,y
    x + (y-x)/2
end

def mid1 x,y
    (x+y)/2
end

def mid1_1 x, y
    (x+y) >> 1
end

def mid2 x,y
    if x < 0
        x1 = x - x
        y1 = y - x
        return (x1 + (y1-x1)/2) + x
    end
    x + (y-x)/2
end

require 'minitest/autorun'

describe "seeking mid" do
    it "should work on natural digits" do
      1000_000.times do
        x = rand(0..100)
        y = rand(x..200)
        assert_equal mid(x,y), mid1(x,y)
      end
    end
    it "should work with negative numbers" do
        1000_00.times do
            x = rand(-5..5)
            y = rand(x..5)
            a,b,c, d = mid(x,y), mid1(x,y), mid2(x,y), mid1_1(x,y)
            assert a == b && b == c && c == d
        end
    end
end

10.times do
 x = rand(-5..2)
 y = rand(x..2)
 a,b,c = mid(x,y), mid1(x,y), mid2(x,y)
 hash = {equal: a == b && b == c, xy:[x,y], mid: mid(x,y), mid1: mid1(x,y), mid2: mid2(x,y)}
 p hash
end