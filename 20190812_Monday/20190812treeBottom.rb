p "alias x='ruby 20190812_Monday/20190812treeBottom.rb'" 

# Ruby treeBottom

require "minitest/autorun"
require_relative "treeBottom.rb"
require 'ostruct'

describe "treeBottom" do
    it "Pass the tests" do
        [
            OpenStruct.new({
                tree: "(2 (7 (2 () ()) (6 (5 () ()) (11 () ()))) (5 () (9 (4 () ()) ())))",
                answer: [5, 11, 4]
            }),
        ].each{|x| assert_equal x.answer, Task.new.treeBottom(x.tree)}
    end
end
