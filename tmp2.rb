# https://www.codewars.com/kata/union-of-intervals/train/ruby

# https://apidock.com/ruby/Enumerable/chunk


# 1) Get chunk
# belongs to
# Left in array
# right in array

# 2) Substitute min-max

# 3) Gule into the Array.

def point_in_segment?(point:,segment:)
    if segment[0] <= point && point <= segment[1]
        true
    else
        false
    end
end
def segment_in_segment?(parent: , child:)
    if parent[0] <= child[0] && child[1] <= parent[1]
        true
    else
        false
    end
end

def interval_insert (myl, interval)
    a = {myl: myl, intermal: interval}
    p a
    cha = myl.chunk { |segment| 
       a =  point_in_segment?(point: interval[0],segment: segment)
       b = point_in_segment?(point:interval[1],segment: segment) 
       c =  segment_in_segment?(parent: interval , child:segment)
       a || b || c
    }
    ch1 = []
    flag = true
    cha.each{|ch|
        if ch[0]
             flag = false
             ch1 << (ch[1]+interval).flatten.minmax
        else
            ch1 += ch[1]
        end
    }
    if(flag)
        ch1.push(interval)
    end
    ch1.sort{|x,y| x[1] <=> y[1]}
end



require 'minitest/autorun'


describe "Points and Segment" do
    it "Segment in segment" do
        assert segment_in_segment?(parent: [1,50], child:[1,10])
        assert segment_in_segment?(parent: [1,50], child:[3,10])
        assert segment_in_segment?(parent: [1,50], child:[3,50])
        refute segment_in_segment?(parent: [60,150], child:[3,50])
    end
    it "Check when point inside the check" do
        assert point_in_segment?(point: 2, segment: [1,3])
        assert point_in_segment?(point: 1, segment: [1,3])
        assert point_in_segment?(point: 3, segment: [1,3])
       
    end
    it "Refute" do
        refute point_in_segment?(point:1, segment: [10, 14])
        refute point_in_segment?(point:44, segment: [10, 14])
    end
    it "check how it works wen no need to add, just merge" do
        assert_equal(interval_insert([[1, 2]], [3, 4]), [[1, 2], [3, 4]])
        assert_equal(interval_insert([[1, 2], [3, 4]], [2, 3]), [[1, 4]])
        assert_equal(interval_insert([[1, 2], [3, 4], [5, 6]], [2, 3]), [[1, 4], [5, 6]])
    end
    it "check when need to add new inteval" do
        assert_equal(interval_insert([[1, 2]], [3, 4]), [[1, 2], [3, 4]])

        m = [[1, 2]]
        i = [3, 4]
        a = [[1, 2], [3, 4]]
        assert_equal(interval_insert(m, i ), a)

        m = [[0, 2], [3, 6], [7, 7], [9, 12]]
        i = [1, 8]
        a = [[0, 8], [9, 12]]
        assert_equal(interval_insert(m, i ), a)

        m = [[3, 4]]
        i = [1, 2]
        a = [[1, 2], [3, 4]]
        assert_equal(interval_insert(m, i ), a)


    end

end