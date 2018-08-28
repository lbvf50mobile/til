require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/mDpAJnDQkJqaYYsCg
3.times do puts "" end
puts "isSubtree".yellow
puts ""



require "minitest/autorun"
require 'benchmark'
require 'json'


def bfs_equal(t1, t2)
    q1 = []
    q2 = []
    q1.push t1
    q2.push t2
    while (!q1.empty?) && (!q2.empty?)
        c1 = q1.pop
        c2 = q2.pop
        return false if c1.value != c2.value
        q1.push c1.left if ! c1.left.nil?
        q1.push c1.right if ! c1.right.nil?
        q2.push c2.left if ! c2.left.nil?
        q2.push c2.right if ! c2.right.nil?
    end
    return false if (!q1.empty?) || (!q2.empty?)
    true
end


def isSubtree(t1, t2)
    q = []
    q.push t1
    while !q.empty?
        current = q.pop
        return true if (current.value == t2.value) && bfs_equal(current, t2) 
        q.push current.left if ! current.left.nil?
        q.push current.right if ! current.right.nil?
    end
    false
end



class Tree
   attr_accessor :value, :left, :right
  def initialize(val)
    @value = val
    @left = nil
    @right = nil
  end
  # WHY inspect dose not works?
  def inspect
    "#{@value} l:#{!@left.nil?} r:#{!@right.nil?}"
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


Tests = [
    '{
        "value": 5,
        "left": {
            "value": 10,
            "left": {
                "value": 4,
                "left": {
                    "value": 1,
                    "left": null,
                    "right": null
                },
                "right": {
                    "value": 2,
                    "left": null,
                    "right": null
                }
            },
            "right": {
                "value": 6,
                "left": null,
                "right": {
                    "value": -1,
                    "left": null,
                    "right": null
                }
            }
        },
        "right": {
            "value": 7,
            "left": null,
            "right": null
        }
    }',
    '{
        "value": 10,
        "left": {
            "value": 4,
            "left": {
                "value": 1,
                "left": null,
                "right": null
            },
            "right": {
                "value": 2,
                "left": null,
                "right": null
            }
        },
        "right": {
            "value": 6,
            "left": null,
            "right": {
                "value": -1,
                "left": null,
                "right": null
            }
        }
    }',
    true,
    '{
        "value": 5,
        "left": {
            "value": 10,
            "left": {
                "value": 4,
                "left": {
                    "value": 1,
                    "left": null,
                    "right": null
                },
                "right": {
                    "value": 2,
                    "left": null,
                    "right": null
                }
            },
            "right": {
                "value": 6,
                "left": {
                    "value": -1,
                    "left": null,
                    "right": null
                },
                "right": null
            }
        },
        "right": {
            "value": 7,
            "left": null,
            "right": null
        }
    }',
    '{
        "value": 10,
        "left": {
            "value": 4,
            "left": {
                "value": 1,
                "left": null,
                "right": null
            },
            "right": {
                "value": 2,
                "left": null,
                "right": null
            }
        },
        "right": {
            "value": 6,
            "left": null,
            "right": {
                "value": -1,
                "left": null,
                "right": null
            }
        }
    }',
    false

]




describe "Trees" do
  
    it "auto test" do
       Tests.each_slice(3)do |json1, json2, ans|
            t1 = hsh2tree(JSON.parse(json1))
            t2 = hsh2tree(JSON.parse(json1)) 
            assert_equal ans,isSubtree(t1, t2)
        end
    end
end
