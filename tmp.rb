require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/tXN6wQsTknDT6bNrf
3.times do puts "" end
puts "IsTreeSymetric".yellow
puts ""

require "minitest/autorun"
require 'benchmark'
require 'json'

def valid_tree(tree)
    return true if tree.nil?
    return true if tree.left.nil? && tree.right.nil?
    return true if !tree.left.nil? && !tree.right.nil?
    return false
end

def dfs(tree1,tree2, opt)
    puts "***".cyan
    puts "#{tree1.inspect}".red
    puts "#{tree2.inspect}".green
    puts "#{opt}"
    if !opt[:sym]
        puts "!opt[:sym]"
        return opt[:sym]
    end
    if tree1.nil? && tree2.nil?
        puts "tree1.nil? && tree2.nil?"
        return true 
    end
    if tree1.nil? && tree2
        puts "tree1.nil? && tree2"
        return opt[:sym] = false 
    end
    return opt[:sym] = false if tree2.nil? && tree1
    return opt[:sym] = false if tree2.value != tree1.value
    dfs(tree1.left,tree1.right, opt)
    dfs(tree2.left,tree2.right, opt)
end
def isTreeSymmetric(tree)
    puts "------------------"
    puts "#{tree.inspect}".cyan
    opt = {sym: true}
    dfs(tree.left,tree.right, opt) unless tree.nil?
    opt[:sym]
end


class Tree
   attr_accessor :value, :left, :right
  def initialize(val)
    @value = val
    @left = nil
    @right = nil
  end
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

