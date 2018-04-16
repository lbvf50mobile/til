# Array#delete_at
require "minitest/autorun"

describe "Array#delete_at" do
    it "return value by index, and change array it called on" do
        a = [*1..4]
        assert_equal 1,a.delete_at(0)
        assert_equal [*2..4],a
    end
end
