require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/AaWaYxi8gjtbqgp2M
3.times do puts "" end
puts "restoreBinaryTree".green
puts ""



require "minitest/autorun"
require 'benchmark'
require 'json'


def rbt(i,p)
    return nil if i.nil?
    return nil if p.nil?
    return nil if i.empty?
    return nil if p.empty?

    a = p[0]
    tree = Tree.new(a)

    return tree if p.size == 1


    ai = i.find_index(a)
    new_i_left = i[0..ai-1]
    new_i_right = i[ai+1..-1]
    d = i[0]
    di = p.find_index(d)
    new_p_left = p[1..di]
    new_p_right = p[di+1..-1]
    tree.left = rbt(new_i_left,new_p_left)
    tree.right = rbt(new_i_right,new_p_right)
    
    tree
end

def restoreBinaryTree(inorder, preorder)
    rbt(inorder, preorder)
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
    }'
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
