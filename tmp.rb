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




def deleteFromBST(t,queries)
    x = '{
        "value": 5,
        "left": {
            "value": 2,
            "left": null,
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
                "left":null,
                "right": null
            }
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

    it "delete left lef" do
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
            "value": 5,
            "left": {
                "value": 2,
                "left": null,
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
                    "left":null,
                    "right": null
                }
            }
        }'
        t = hsh2tree(JSON.parse(t_json))
        ans = JSON.parse(ans_json)
        assert_equal ans, tree2hsh(deleteFromBST(t,[1,7]))
        assert_equal ans, tree2hsh(deleteFromBST(t,[7,1]))

    end

    it "delete right leaf" do
    end

    it "delete leaf root" do
    end
  
    it "auto test" do
       Tests.each_slice(3)do |t_json, queries, ans_json|
        skip
            t = hsh2tree(JSON.parse(t_json))
            ans = JSON.parse(ans_json)
            assert_equal ans, tree2hsh(deleteFromBST(t,queries))
        end
    end

  
end
