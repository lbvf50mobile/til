#!/usr/bin/env ruby

# Ruby Range#cover? 

p "alias x='ruby 20180909_Sunday/20180909.rb'"

require "minitest/autorun"

describe "covers?" do
    it "covers works" do
        assert (1..5).cover?(2)
        refute (1..5).cover?(20)
    end
end