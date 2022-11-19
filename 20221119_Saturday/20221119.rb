# Leetcode: 587. Erect the Fence.
# https://leetcode.com/problems/erect-the-fence/
# @param {Integer[][]} trees
# @return {Integer[][]}
def outer_trees(trees)
  # Based on:
  # https://leetcode.com/problems/erect-the-fence/solution/
  return trees if 1 >= trees.size
  bm = bottom_left(trees)
  trees.sort!{|pe,q|
    diff = orientation(bm,pe,q) - orientation(bm,q,pe)
    if 0 == diff
      return distance(bm,pe) - distance(bm,q)
    else
      return diff > 0 ? 1 : -1
    end
  }
  i = trees.size - 1
  while i >= 0 && orientation(bm,trees.last, trees(i)) == i
    i -= 1
  end
  l = i + 1
  h = trees.size - 1
  while l < h
    tree[l],tree[h] = tree[h],tree[l]
    l += 1
    h -= 1
  end
  stack = []
  stack.push(trees[0])
  stack.push(trees[1])
  (2...trees.size).each do |j|
    top = stack.pop
    while orientation(stack.last, top, points[j]) > 0
      top = stack.pop
    end
    stack.push(top)
    stack.push(points[j])
  end
  return stack
end

def orientation(pe, q, r)
  return (q[1]-pe[1])*(r[0]-q[0])-(q[0]-pe[0])*(r[1]-q[1])
end
def distance(pe,q)
  (pe[0]-q[0])**2 + (pe[1]-q[1])**2
end

def bottom_left(points)
  bl = points[0]
  points.each do |pe|
    if(pe[1] < bl[1])
      bl = pe
    end
  end
  return bl
end


