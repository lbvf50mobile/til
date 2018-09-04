require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/oZXs4td52fsdWC9kR
3.times do puts "" end
puts "deleteFromBST".green
puts ""




require "minitest/autorun"
require 'benchmark'
require 'json'
require 'ostruct'


def find_right(t)
    return t if t.nil?
    return t if t.right.nil?
    find_right(t.right)
end
# https://gist.github.com/lbvf50mobile/911c879df1e5e2fef595076ac8efc0a0
def delete(root: nil, data: nil, parent: nil)
    p_left = parent && parent.left ? parent.left.value : false
    p_right = parent && parent.right ? parent.right.value : false
    if root.nil?
        return nil
    elsif data < root.value
        root.left = delete(root: root.left, data: data, parent: root)
    elsif data > root.value
        root.right = delete(root: root.right, data: data, parent: root)
    else
        if (!root.left) && (!root.right)
            root = nil
        elsif root.left.nil?
            root = root.right
        elsif root.right.nil?
            root = root.left
        else
            right = find_right(root.left)
            delete(root: root.left, data: right.value, parent: root)
            right.left = root.left
            right.right = root.right
            root = right
        end
        if parent
            if p_left == data
                parent.left = root
            end
            if p_right == data
                parent.right = root
            end
        end
    end
    root
end
def deleteFromBST(t,queries)
    return nil if t.nil?
    queries.each do |x|
        t = delete(root:t,data:x,parent:nil)
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

  

    it "delete leaf with 2 childs" do
        t_json = '{
            "value": 5,
            "left": {
                "value": 2,
                "left": {
                    "value": 1,
                    "left": null,
                    "right": null
                },
                "right": {
                    "value": 3,
                    "left": null,
                    "right": null
                }
            },
            "right": {
                "value": 6,
                "left": null,
                "right": {
                    "value": 8,
                    "left": {
                        "value": 7,
                        "left": null,
                        "right": null
                    },
                    "right": null
                }
            }
        }'
        ans_json = '{
            "value": 3,
            "left": {
                "value": 2,
                "left": {
                    "value": 1,
                    "left": null,
                    "right": null
                },
                "right": null
            },
            "right": {
                "value": 6,
                "left": null,
                "right": {
                    "value": 8,
                    "left": {
                        "value": 7,
                        "left": null,
                        "right": null
                    },
                    "right": null
                }
            }
        }'
        t = hsh2tree(JSON.parse(t_json))
        ans = JSON.parse(ans_json)
        assert_equal ans, tree2hsh(deleteFromBST(t,[5]))
    end


  
    it "auto test" do
       Tests.each_slice(3)do |t_json, queries, ans_json|
            t = hsh2tree(JSON.parse(t_json))
            ans = JSON.parse(ans_json)
            assert_equal ans, tree2hsh(deleteFromBST(t,queries))
        end
    end
  
end
