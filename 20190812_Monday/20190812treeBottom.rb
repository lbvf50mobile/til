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
    it "Shuld extract value and left and right sub tree" do
        answer = {value: 2, left: '(7 (2 () ()) (6 (5 () ()) (11 () ())))', right: '(5 () (9 (4 () ()) ()))'}
        tree = "(2 (7 (2 () ()) (6 (5 () ()) (11 () ()))) (5 () (9 (4 () ()) ())))"
        assert_equal answer, Task.new.extract_vertex(tree)
    end
    it "Shuld undestand when it leaf" do
       tree = "(2 (7 (2 () ()) (6 (5 () ()) (11 () ()))) (5 () (9 (4 () ()) ())))"
       refute Task.new.is_leaf(Task.new.extract_vertex(tree))
       tree = "(2 () ())"
       assert Task.new.is_leaf(Task.new.extract_vertex(tree))
    end
end
