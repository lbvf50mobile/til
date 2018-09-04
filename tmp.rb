require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/oZXs4td52fsdWC9kR
3.times do puts "" end
puts "deleteFromBST".green
puts ""




require "minitest/autorun"
require 'benchmark'
require 'oj'
require 'ostruct'






# https://gist.github.com/lbvf50mobile/911c879df1e5e2fef595076ac8efc0a0
def delete(root: nil, data: nil, parent: nil)
    if root.nil?
        return nil
    elsif data < root.value
        root.left = delete(root: root.left, data: data)
    elsif data > root.value
        root.right = delete(root: root.right, data: data)
    else
        if (!root.left) && (!root.right)
            root = nil
        elsif root.left.nil?
            root = root.right
        elsif root.right.nil?
            root = root.left
        else
            rp = root
            right = root.left
            i = true
            loop do
                break if right.right.nil?
                rp = right
                right = right.right
                i = false
            end
            # only left is biggets
            if i
                if (!right.left) && (!right.right)
                    rp.left = nil
                else
                    rp.left = right.left
                end
            # left have a right child
            else
                if (!right.left) && (!right.right)
                    rp.right = nil
                else
                    rp.right = right.left
                end
            end
            right.left = root.left
            right.right = root.right
            root = right
        end
    end
    root
end
def deleteFromBST(t,queries)
    return nil if t.nil?
    queries.each do |x|
        t = delete(root:t,data:x)
    end
    t
end

class Tree
    attr_accessor :value, :left, :right
   def initialize(val)
     @value = val
     @left = nil
     @right = nil
   end
   
end
 
 def hsh2tree(hsh)
     return nil if hsh.nil?
     obj = Tree.new(hsh["value"])
     obj.left = hsh2tree(hsh["left"])
     obj.right = hsh2tree(hsh["right"])
     obj
 end
 
 def tree2hsh(tree)
     return nil if tree.nil?
     hsh = {"value" => tree.value}
     hsh["left"] = tree2hsh(tree.left)
     hsh["right"] = tree2hsh(tree.right)
     hsh
 end

require_relative 'tests/codesignal_tests.rb'
Tests = CodeSignalTests.tests




describe "Trees" do


    


  
    it "auto test" do
       Tests.each_slice(3)do |t_json, queries, ans_json|
            t = hsh2tree(Oj.load(t_json))
            ans = Oj.load(ans_json)
            assert_equal ans, tree2hsh(deleteFromBST(t,queries))
        end
    end
  
end
