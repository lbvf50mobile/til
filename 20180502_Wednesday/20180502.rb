# String#delete use Srting#count rules.

a = [*1..5].join.delete("^2-4")
b = [*1..5].join.delete("2-4")

p a
p b

require "minitest/autorun"

describe "String#delete" do
    it "do remove range" do
        assert_equal "234",a
        assert_equal '15',b
    end
end