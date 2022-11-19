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


