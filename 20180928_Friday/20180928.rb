#!/usr/bin/env ruby

# Ruby The Safe Navigation Operator (&.).

# http://mitrev.net/ruby/2015/11/13/the-operator-in-ruby/

p "alias x='ruby 20180928_Friday/20180928.rb'"

class A
    attr_accessor :a, :bam, :c
    def initialize(a:nil, bam:nil, c:nil)
        @a = a
        @bam = bam
        @c = c
    end
    def test
    end
end

require "minitest/autorun"
require 'ostruct'

describe "The Save Navigation Operator" do
    it "should work" do
        x = A.new
        assert_nil x&.a&.bam&.c
        element = A.new(a:1,bam:1,c:1)
        assert element&.a
        assert element.bam
        assert element.a
        assert_raises NoMethodError do
            assert element&.a&.b
        end
        pair = A.new(bam:OpenStruct.new(boom:1),a:5,c:10)
        assert pair&.bam&.boom
        folder = A.new(bam:OpenStruct.new(one:OpenStruct.new(two:2)))
        assert folder&.bam&.one&.two
    end
end