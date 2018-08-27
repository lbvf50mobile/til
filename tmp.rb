require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/jAKLMWLu8ynBhYsv6
3.times do puts "" end
puts "kthSmallestInBST".cyan
puts ""



require "minitest/autorun"
require 'benchmark'
require 'json'

def dfs(t,a)
    return a if t.nil?
    dfs(t.left,a)
    a.push t.value
    dfs(t.right,a)
    return a
end
def kthSmallestInBST(t, k)
    dfs(t,[])[k-1]
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
        "value": 3,
        "left": {
            "value": 1,
            "left": null,
            "right": null
        },
        "right": {
            "value": 5,
            "left": {
                "value": 4,
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
    4,5,

]




describe "Trees" do
  
    it "auto test" do
       Tests.each_slice(3)do |json, k, ans|
            t = hsh2tree(JSON.parse(json)) 
            assert_equal ans,kthSmallestInBST(t, k)
        end
    end
end
