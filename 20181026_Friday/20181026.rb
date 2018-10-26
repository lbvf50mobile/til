#!/usr/bin/env ruby

# Ruby String#count and Fixnum#fdiv

# https://ruby-doc.org/core-2.2.0/String.html#method-i-count
#  https://apidock.com/ruby/Fixnum/fdiv

p "alias x='ruby 20181026_Friday/20181026.rb'" 

require 'minitest/autorun'
require 'colorize'

describe "String#count and Fixnum#fdiv " do
    it "should be equal" do
        string = "1a2b3"
        puts "Answer:".green
        puts string.size.fdiv(string.count('ab'))
        assert_equal 2.5,  string.size.fdiv(string.count('ab'))
    end
end