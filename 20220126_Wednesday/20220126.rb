# Leetcode: 1305. All Elements in Two Binary Search Trees.
# https://leetcode.com/problems/all-elements-in-two-binary-search-trees/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 511 ms, faster than 12.50% of Ruby online submissions for All Elements in Two Binary Search Trees.
# Memory Usage: 213.6 MB, less than 75.00% of Ruby online submissions for All Elements in Two Binary Search Trees.
#
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Integer[]}
def get_all_elements(root1, root2)
  @d = false
  a,b = inorder(root1).reverse, inorder(root2).reverse
  puts "a: #{a.inspect}" if @d
  puts "b: #{b.inspect}" if @d
  answer = []
  while (!a.empty?) || (!b.empty?)
    puts "a = #{a.last}, b = #{b.last}" if @d
    if (!a.empty?) && (!b.empty?)
      if a.last < b.last
        puts "select a = #{a.last}." if @d
        answer.push(a.pop)
      else
        puts "select b = #{b.last}." if @d
        answer.push(b.pop)
      end
    elsif a.empty?
      answer.push(b.pop)
    elsif b.empty?
      answer.push(a.pop)
    else
      raise "Unknown situation both arrays are empty."
    end
  end
  answer
end

def inorder(x)
  stack = []
  answer = []
  next_step = x
  while true
    if next_step
      stack.push(next_step)
      next_step = next_step.left
    else
      break if stack.empty?
      next_step = stack.pop
      answer.push(next_step.val)
      next_step = next_step.right
    end
  end
  return answer
end
