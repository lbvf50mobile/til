# Two ways to create lambda
require "minitest/autorun"

describe "Two ways of generating lambda" do
    it "shoud be the same" do
        a = ->{"boom"}
        b = lambda{"boom"}
        assert_equal a.call,b.call
        assert_equal Proc, a.class
        assert_equal Proc, b.class
        assert_equal true, a.lambda?
        assert_equal true, b.lambda?
    end
end
