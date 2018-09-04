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

def find(t,x, parent, left)
    return [t,parent, left] if t.nil?
    return [t,parent, left] if x == t.value
    x < t.value ? find(t.left,x,t,true) : find(t.right,x,t,false)
end
def find_right(t, parent)
    return [t,parent] if t.nil?
    return [t,parent] if t.right.nil?
    find_right(t.right,t)
end
def leaf? node
    (!node.left) && (!node.right)
end
def one_child? node
    ((node.left) && (!node.right)) || ((!node.left) && (node.right)) 
end
def delete_leaf(t,parent,left)
    if parent
        if left
            parent.left = nil
        else
            parent.right = nil
        end
    else
        t = nil
    end
    t
end
def delete_node_one(t,node,parent,left) 
    child = node.left ? node.left : node.right
    if parent
        if left
            parent.left = child
        else
            parent.right = child
        end
    else
        t = child
    end
    t
end
def delete_node_two(t,node,parent,left) 
    right, right_parent = find_right(node.left, node)
    left = right_parent == node ? true : false
    if leaf?(right)
        delete_leaf(node.left,right_parent,left)
    else
        delete_node_one(node.left,right,right_parent,left)
    end
    right.left = node.left
    right.right = node.right
    if parent
        if left
            parent.left = right
        else
            parent.right = right
        end
    else
        t = right
    end
    t
end

def deleteFromBST1(t,queries)
    return nil if t.nil?
    queries.each do |x|
        node, parent, left = find(t,x,nil,nil)
        if node
            if leaf?(node)
                t = delete_leaf(t,parent,left)
                next
            end
            if one_child?(node)
                t = delete_node_one(t,node,parent,left)
                next
            end
            t = delete_node_two(t,node,parent,left)
        end
    end
    t
end

def delete(root: nil, data: nil, parent: nil)
    if root.nil?
        return nil
    elsif data < root.value
        root.left = delete(root: root.left, data: data, parent: root)
    elsif data > root.value
        root.right = delete(root: root.right, data: data, parent: root)
    else
        tmp = root
        if leaf?(root)
            root = nil
        elsif root.left.nil?
            root = root.right
        elsif root.right.nil?
            root = root.left
        else
            right, parent_right  = find_right(root.left, root)
            puts "----".green
            p right.value
            p parent_right.value
            delete(root: root.left, data: right.value, parent: root)
            right.left = root.left
            right.right = root.right
            root = right
        end
        if parent
            if parent.left && parent.left.value = tmp.value
                parent.left = root
            else
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
            skip
            t = hsh2tree(JSON.parse(t_json))
            ans = JSON.parse(ans_json)
            assert_equal ans, tree2hsh(deleteFromBST(t,queries))
        end
    end
    it "auto test" do
        Tests.each_slice(3)do |t_json, queries, ans_json|
            skip
             t = hsh2tree(JSON.parse(t_json))
             ans = JSON.parse(ans_json)
             assert_equal ans, tree2hsh(deleteFromBST1(t,queries))
         end
     end

  
end
