#!/usr/bin/env ruby

# Ruby Hash: Set return value for undefined key.

# https://docs.ruby-lang.org/en/2.0.0/Hash.html#method-c-new

p "alias x='ruby 20180821_Tuesday/20180821.rb'"

h = Hash.new("Here is no such value.")
p "For empty key return value set in constructor: #{h[100]}"

require "minitest/autorun"

describe "hash" do
    it "should return value set in construntor on empty key " do
        h = Hash.new(?q)
        assert_equal ?q, h[50000]
    end
end