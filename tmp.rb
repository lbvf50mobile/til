require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/TG4tEMPnAc3PnzRCs
3.times do puts "" end
puts "HasPathWithGivenSum".green
puts ""

require "minitest/autorun"
require 'benchmark'
require 'json'

def dfs(tree,sum,options)
    return nil if options[:find]
    return nil if tree.nil?
    sum += tree.value
    if tree.left.nil? && tree.right.nil? && sum == options[:sum] 
        options[:find] = true
        return nil
    end
    dfs(tree.left,sum,options)
    dfs(tree.right,sum,options)

end
def hasPathWithGivenSum(tree,s)
    options = {sum: s, find: false}
    dfs(tree,0,options)
    options[:find]
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
    '{
        "value": 4,
        "left": {
            "value": 1,
            "left": {
                "value": -2,
                "left": null,
                "right": {
                    "value": 3,
                    "left": null,
                    "right": null
                }
            },
            "right": null
        },
        "right": {
            "value": 3,
            "left": {
                "value": 1,
                "left": null,
                "right": null
            },
            "right": {
                "value": 2,
                "left": {
                    "value": -2,
                    "left": null,
                    "right": null
                },
                "right": {
                    "value": -3,
                    "left": null,
                    "right": null
                }
            }
        }
    }',
    7,
    true,

]




describe "Trees" do
    it "true" do
        assert true
        refute false
    end
    it "confvert JSON to tree only head" do
       hsh = JSON.parse(Tests[0])
       tree = hsh2tree(hsh)
       new_hsh = tree2hsh(tree)
       assert_equal hsh, new_hsh
    end
    it "auto test" do
       Tests.each_slice(3){|json, sum, ans| assert_equal ans,hasPathWithGivenSum(hsh2tree(JSON.parse(json)), sum)}
    end
end

