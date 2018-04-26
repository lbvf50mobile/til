# String#end_with?

require "minitest/autorun"

describe "String#end_with?" do
    it "should be true" do
        assert "Test".end_with? "st"
    end
    it "should be false" do
        assert_equal "test".end_with?("2"), false
    end
end