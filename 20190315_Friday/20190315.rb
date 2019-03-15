#!/usr/bin/env ruby
p "alias x='ruby 20190315_Friday/20190315.rb'"

# Ruby Fixnum#~  (~x == - x - 1); @beastia

# http://ruby-doc.org/core-2.0.0/Fixnum.html#method-i-~

require "minitest/autorun"
def test x
    - x - 1
end

describe "tilda" do
    it "work" do
        assert_equal -2, ~1
    end
    it "zero" do
        assert_equal -1, ~0
    end
    it "auot negative" do 
        (-1000..-1).each do |x|
            assert_equal test(x),~x
        end
    end
    it "auto positive" do
        (1..1000).each do |x|
            assert_equal test(x),~x
        end
    end
end