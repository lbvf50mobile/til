# Leetcode: 958. Check Completeness of a Binary Tree.
# https://leetcode.com/problems/check-completeness-of-a-binary-tree/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 74 ms, faster than 100.00% of Ruby online submissions for Check Completeness of a Binary Tree.
# Memory Usage: 211.1 MB, less than 100.00% of Ruby online submissions for Check Completeness of a Binary Tree.
# 2023.03.15 Daily Challenge.
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
# @return {Boolean}
def is_complete_tree(root)
  layers = []
  q = [root]
  layers.push(q)
  while ! q.empty?
    nq = []
    total, nils = 0,0
    q.each do |x|
      total += 1
      if x.nil?
        nils += 1
        next
      end
      nq.push(x.left)
      nq.push(x.right)
    end
    if total == nils
      break
    end
    layers.push(nq)
    q = nq
  end
  layers.pop # remove last one full of zeros.
  size = layers.size
  #p "Layers size: #{size}."
  # All layes exept bottom one: 
  # 1. Has 2**index elements.
  # 2. Has no nils.
  # Bottom layer.
  # If remove all nils from right part,
  # has no nils in the left part.
  layers.each_with_index{ |x,i|
    # p "Current row number is: #{i} #{size-2}."
    # p x.map{|x| x ? x.val : nil}
    # bottom one.
    if i == size - 1 
      # remove all nils from the right.
      while (!x.empty?) && x.last.nil?
        x.pop
      end
      # left part must no have a nils.
      if x.any?{|el| el.nil?}
        # p "Last row has nil."
        return false
      end
    else
      if x.size != 2**i
        # p "Middle row size is incorrect."
        return false
      end
      if x.any?{|el| el.nil?}
        p "Thhere is some nils."
        return false
      end
    end
  }
  return true
end
