# Array's methods: shuffle, min/max, first/last.

require "minitest/autorun"

describe "Array" do
    it "min return N min values in ascending order" do
        assert_equal [1,2,3,4],[*1..10].shuffle.min(4)
    end

    it "min(N) if N > arr.size all array will be returnted" do
        assert_equal [1,2,3,4],[*1..4].shuffle.min(100)
    end

    it "Max retun N max values in descending order" do
        assert_equal [100,99,98,97], [*1..100].shuffle.max(4)
    end
    it "max(N) if N>arr.size all array will be returned" do
        assert_equal [5,4,3,2,1], [*1..5].shuffle.max(100)
    end
    it "first/last retun N first last elements of array" do
        assert_equal [1,2], [*1..10].first(2)
        assert_equal [9,10], [*1..10].last(2)
    end
    it "first(N)/last(N) if N > array.size all array will be returned" do
        assert_equal [1,2], [*1..2].first(100)
        assert_equal [1,2], [*1..2].last(100)
    end
end
