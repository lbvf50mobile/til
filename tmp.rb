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
def right(t,parent = nil)
    return [t,parent] if t.nil?
    return [t,parent] if t.left.nil? && t.right.nil?
    right(t.right,t)
end
def no_children? x
    x.left.nil? && x.right.nil?
end
def have_left? x
    x.left
end
def clear x
    x.left = nil
    x.right = nil
end

def delete_no_left(t,d,prnt,left)
    if(t == d)
        right = d.right
        clear d
        return right
    end
    if left
        right = d.right
        prnt.left = right
        clear d
        return t
    else
        right = d.right
        prnt.right = right
        clear d
        return t
    end
end
def delete_have_left(t,d,prnt,left) 
    r,rp = right(d.left)
    

end

def delete(t,x)
    nil if t.nil?
    d, prnt, left = find(t,x)
    if d
        return delete_have_left(t,d,prnt,left) if d.left
        return delete_no_left(t,d,prnt,left)
    else
        return t
    end
end

def deleteFromBST(t,queries)
    x = '{
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
            "value": 8,
            "left": {
                "value": 7,
                "left": null,
                "right": null
            },
            "right": null
        }
    }'
    hsh2tree(JSON.parse(x))
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
            t = hsh2tree(JSON.parse(t_json))
            ans = JSON.parse(ans_json)
            assert_equal ans, tree2hsh(deleteFromBST(t,queries))
        end
    end

  
end
