# String  #chars and #codepoints
require 'minitest/autorun'
describe "Chars and codepoints" do
    it "codepoints should return array of symboles codes" do
        str = "This is a test."
        assert_equal str.chars.map(&:ord), str.codepoints
    end
end
