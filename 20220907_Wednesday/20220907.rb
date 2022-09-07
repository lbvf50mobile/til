# Leetcode: 606. Construct String from Binary Tree.
# https://leetcode.com/problems/construct-string-from-binary-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 113 ms, faster than 100.00% of Ruby online submissions for Construct String from Binary Tree.
# Memory Usage: 211.9 MB, less than 100.00% of Ruby online submissions for Construct String from Binary Tree.
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
# @return {String}
def tree2str(root)
  @answer = ""
  @d = false
  dfs(root)
  @answer
end
def dfs(root)
  @answer ||= "" # Here is an error between different calls same method.
  return @answer if ! root
  # Add number to answer.
  @answer << root.val.to_s
  l,r,v = root.left, root.right, root.val
  puts "This is #{v}." if @d
  if l && r
    puts "#{v} has both l and r." if @d
    o; dfs(l); c;
    o; dfs(r); c;
  elsif (!l) && r
    puts "#{v} has only r." if @d
    o; c;
    o; dfs(r); c;
  elsif l && (!r)
    puts "#{v} has only l." if @d
    o; dfs(l); c;
  elsif (!l) && (!r)
    puts "#{v} have no both l and r." if @d
    ;
  else
    raise "Uncnown situation for #{root.val}."
  end
  return @answer
end

# Open.
def o
  @answer << ?(
end
# Close.
def c
  @answer << ?)
end
