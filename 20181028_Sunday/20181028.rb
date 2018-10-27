#!/usr/bin/env ruby

# Ruby String#count several arguments.

p "alias x='ruby 20181028_Sunday/20181028.rb'" 

require 'colorize'
require 'minitest/autorun'

describe "String#count exclse" do
    it "should be 5" do
        refute_equal 7, "aa111112222bbb".count("21a","2")
        assert_equal 4, "aa111112222bbb".count("21a","2")
        assert_equal 11, "aa111112222bbb".count("21a")
        assert_equal 5, "aa111112222bbb".count("21a","1a","1")
    end
end