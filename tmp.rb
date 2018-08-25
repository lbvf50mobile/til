require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/tXN6wQsTknDT6bNrf
3.times do puts "" end
puts "IsTreeSymetric".yellow
puts ""

require "minitest/autorun"
require 'benchmark'
require 'json'


def isTreeSymmetric(tree)
true
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
        "value": 1,
        "left": {
            "value": 2,
            "left": {
                "value": 3,
                "left": null,
                "right": null
            },
            "right": {
                "value": 4,
                "left": null,
                "right": null
            }
        },
        "right": {
            "value": 2,
            "left": {
                "value": 4,
                "left": null,
                "right": null
            },
            "right": {
                "value": 3,
                "left": null,
                "right": null
            }
        }
    }',
    true,
    '{
        "value": 1,
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
            "value": 2,
            "left": null,
            "right": {
                "value": 3,
                "left": null,
                "right": null
            }
        }
    }',
    false,
]




describe "Trees" do
  
    it "auto test" do
       Tests.each_slice(2){|json, ans| assert_equal ans,isTreeSymmetric(hsh2tree(JSON.parse(json)))}
    end
end

