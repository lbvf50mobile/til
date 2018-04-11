# String#index
require "minitest/autorun"

describe 'String#index' do
    it "find index of char" do
        assert_equal "123".index(?3),2
    end
    it "cound use regex" do
        assert_equal "1234567".index(/345/),2
    end
    it "could use severl chars" do
        assert_equal "1234567".index("12"),0
    end
    it "retun nil if there is not such char" do
        assert_nil "1234567".index(?z)
    end
end
