# #each_slice and #each_cons

require "minitest/autorun"
describe "slice and cons" do
    it "each_cons" do
        assert_equal [[1,2,3],[2,3,4]], (1..4).each_cons(3).to_a
        assert_equal [[1,2,3]], (1..3).each_cons(3).to_a
        assert_equal [], (1..2).each_cons(3).to_a
        assert_equal [], (1..1).each_cons(3).to_a
    end
    it "each_slice" do
        assert_equal [[1,2,3],[4]], (1..4).each_slice(3).to_a
        assert_equal [[1,2,3]], (1..3).each_slice(3).to_a
        assert_equal [[1,2]], (1..2).each_slice(3).to_a
        assert_equal [[1]],(1..1).each_slice(3).to_a
    end
end
