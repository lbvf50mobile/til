require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/AaWaYxi8gjtbqgp2M
# https://www.youtube.com/watch?v=sx8i54fkyk8&t=425s
3.times do puts "" end
puts "restoreBinaryTree".green
puts ""



require "minitest/autorun"
require 'benchmark'
require 'json'


require 'ostruct'

def restoreBinaryTree(i, pr)
    return nil if pr.empty?
    tree = Tree.new(pr[0])
    idx = i.index(pr[0])
    tree.left = restoreBinaryTree(i[0...idx], pr[1..idx])
    tree.right = restoreBinaryTree(i[idx+1..-1], pr[idx+1..-1])
    tree
end


def dump()
    j = '{
        "value": 1,
        "left": {
            "value": 2,
            "left": {
                "value": 4,
                "left": null,
                "right": null
            },
            "right": null
        },
        "right": {
            "value": 3,
            "left": {
                "value": 5,
                "left": null,
                "right": null
            },
            "right": {
                "value": 6,
                "left": null,
                "right": null
            }
        }
    }'
    h = JSON.parse(j)
    hsh2tree(h)
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


Tests = [
    [4, 2, 1, 5, 3, 6],
    [1, 2, 4, 3, 5, 6],
    ' {
        "value": 1,
        "left": {
            "value": 2,
            "left": {
                "value": 4,
                "left": null,
                "right": null
            },
            "right": null
        },
        "right": {
            "value": 3,
            "left": {
                "value": 5,
                "left": null,
                "right": null
            },
            "right": {
                "value": 6,
                "left": null,
                "right": null
            }
        }
    }',
    [100000, 99999, 99998],
    [99999, 100000, 99998],
    '{
        "value": 99999,
        "left": {
            "value": 100000,
            "left": null,
            "right": null
        },
        "right": {
            "value": 99998,
            "left": null,
            "right": null
        }
    }',

]




describe "Trees" do
  
    it "auto test" do
       Tests.each_slice(3)do |inorder, preorder, ans|
            tree = restoreBinaryTree(inorder, preorder)
            r_hash = tree2hsh(tree)
            assert_equal JSON.parse(ans),r_hash
        end
    end
end
