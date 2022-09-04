# Leetcode: 987. Vertical Order Traversal of a Binary Tree.
# https://leetcode.com/problems/vertical-order-traversal-of-a-binary-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 114 ms, faster than 100.00% of Ruby online submissions for Vertical Order Traversal of a Binary Tree.
# Memory Usage: 210.9 MB, less than 100.00% of Ruby online submissions for Vertical Order Traversal of a Binary Tree.
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
# @param {TreeNode} root
# @return {Integer[][]}
def vertical_traversal(root)
  @d = false
  q = [[root,0,0]]
  cols = {}
  while ! q.empty?
    node, row, col = q.shift
    cols[col] ||= []
    cols[col].push([row,node.val])
    q.push([node.left,row+1,col-1]) if node.left
    q.push([node.right,row+1,col+1]) if node.right
  end
  puts "Hash:" if @d
  p cols if @d
  # 1. Need to have a cols in order.
  answer = []
  cols.keys.sort.each do |key|
    answer.push(cols[key])
  end
  puts "Array with columns:" if @d
  p answer if @d
  # 2. Need to sort cols. First by row second by value.
  # Error. Used map instead of map!, did not save an answer.
  answer.map!{|x| x.sort{|a,b| a[0] != b[0] ? a[0] <=> b[0] : a[1] <=> b[1]}}
  puts "Sorted array:" if @d
  p answer if @d
  # 3. Need to save only value in a pair, and get rid of row.
  answer.map!{|x| x.map(&:last)}
  puts "Reduced answer:" if @d
  p answer if @d
  return answer
end
