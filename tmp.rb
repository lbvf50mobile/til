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
def leaf? node
    (!node.left) && (!node.right)
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

def deleteFromBST(t,queries)
    return nil if t.nil?
    queries.each do |x|
        node, parent, left = find(t,x,nil,nil)
        if node
            if leaf?(node)
                t = delete_leaf(t,parent,left)
            end
        end
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
        assert_equal ans, tree2hsh(deleteFromBST(t,[3]))
    end

    it "delete right leaf" do
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
                "right": null
            },
            "right": {
                "value": 6,
                "left": null,
                "right": {
                    "value": 8,
                    "left": null,
                    "right": null
                }
            }
        }'
        t = hsh2tree(JSON.parse(t_json))
        ans = JSON.parse(ans_json)
        [1,3,7].permutation do |z|
            assert_equal ans, tree2hsh(deleteFromBST(t,z))
        end
    end

    it "delete leaf root" do
        t_json = '{
            "value": 5,
            "left": null,
            "right": null
        }'
        t = hsh2tree(JSON.parse(t_json))
        assert_nil  deleteFromBST(t,[5])

        t = hsh2tree(JSON.parse(t_json))
        assert_equal JSON.parse(t_json), tree2hsh(deleteFromBST(t,[16]))
    end

    it "delete leaf with left child" do
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
                    "value": 7,
                    "left": null,
                    "right": null
                }
            }
        }'
        t = hsh2tree(JSON.parse(t_json))
        ans = JSON.parse(ans_json)
        assert_equal ans, tree2hsh(deleteFromBST(t,[8]))
    end

    it "delete leaf with right child" do
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
