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
def rbt(element,arrays)
    queue = Array.new(arrays[:size])
    
    pointer = 0
    queue[pointer] = element
    pointer += 1 


    while pointer != 0
        current = queue[pointer - 1]
        pointer -= 1
        head_value = current[:head].value
        inorder_head_index = arrays[:back_inorder][head_value]
        inorder_value = arrays[:inorder][current[:inorder_begin]]
        preorder_end_index = arrays[:back_preorder][inorder_value]

        #Left child
        left = {}
        left[:inorder_begin] = current[:inorder_begin]
        left[:inorder_end] =  inorder_head_index - 1
        left[:preorder_head_index] = current[:preorder_head_index] + 1
        if(left[:inorder_begin] <= left[:inorder_end] && (left[:preorder_head_index] <= arrays[:size] - 1))
            current[:head].left = Tree.new(arrays[:preorder][left[:preorder_head_index]])
            left[:head] = current[:head].left
            queue[pointer] = left
            pointer += 1
        end

        #Right child
        right = {}
        right[:inorder_begin] = inorder_head_index + 1
        right[:inorder_end] =  current[:inorder_end]
        right[:preorder_head_index] = preorder_end_index + 1
        if(right[:inorder_begin] <= right[:inorder_end] && (right[:preorder_head_index] <= arrays[:size] - 1))
            current[:head].right =  Tree.new(arrays[:preorder][right[:preorder_head_index]])
            right[:head] = current[:head].right
            queue[pointer] = right
            pointer += 1
        end

    end
end
def restoreBinaryTree(inorder, preorder)
    back_inorder = inorder.each_with_index.reduce({}){|mem,(val,index)| mem[val] = index; mem}
    back_preorder = preorder.each_with_index.reduce({}){|mem,(val,index)| mem[val] = index; mem}
    arrays = {inorder: inorder, back_inorder: back_inorder, back_preorder: back_preorder, preorder: preorder, size: preorder.size}
    answer = Tree.new(arrays[:preorder][0])
    element = {head: answer, preorder_head_index: 0, inorder_begin: 0, inorder_end: (inorder.size - 1)}
    rbt(element, arrays)
    answer
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
