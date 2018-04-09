# Minitest + Array(x) wrapper for x == nil
require "minitest/autorun"
def wrapper arg
    Array(arg)
end

describe "Wrapper" do
    it "must returt array when array is agg" do
        assert_equal Array, wrapper([123]).class, "Array(x) return array when x array"
    end
    it "must returt array when nil is agg" do
        assert_equal Array, wrapper(nil).class, "Array(x) return array when x == nil"
    end
    it "must raise exception when Array.new nil" do
        begin
            Array.new(nil)
        rescue => e
            assert_equal /no implicit/ === e.message, true, "Arran.new(x) dose not assepts nil"
        end
    end
end
