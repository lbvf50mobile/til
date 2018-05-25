# Array #| method

require "minitest/autorun"

describe "the pipe method:)" do
    it "shold save only unic values" do
        assert_equal %w[a b c d], %w[ a a a a a a a b b b b] | %w[ c c c c c d d d d]
    end
end