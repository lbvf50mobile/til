p "alias x='ruby 20190827_Tuesday/20190827.rb'" 

# Ruby: Array#take and Array#first [with arguments] (two forms).

a = [1,2,3,4,5]

# https://apidock.com/ruby/Array/take
# https://apidock.com/ruby/Array/first
# https://ruby-doc.org/core-2.6.3/Array.html#method-i-first
# https://apidock.com/ruby/Test/Unit/Assertions/assert_raise
# https://ruby-doc.org/core-2.6.3/Array.html#method-i-take


p a.take(2) == a.first(2)
require 'minitest/autorun'
describe "should be equal" do
    it 'take and first' do
        assert_equal [1,2], [1,2,3].take(2)
        assert_equal [1,2], [1,2,3].first(2)
        assert_equal [1,2], [1,2].take(10)
        assert_equal [1,2], [1,2].first(10)
    end
    it "assert argument error when pass negative values" do
        assert_raises ArgumentError do
            [1].take(-5)
        end
        assert_raises ArgumentError do
            [1].first(-5)
        end
    end
    it "two types of first" do
        assert_nil [].first
        assert_equal [], [].first(10)
    end
end