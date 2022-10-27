# Leetcode: 835. Image Overlap.
# https://leetcode.com/problems/image-overlap/
# @param {Integer[][]} img1
# @param {Integer[][]} img2
# @return {Integer}
# Fails.
def largest_overlap(img1, img2)
  @img1, @img2 = img1, img2
  @n = @img1.size
  max = 0
  # Move upper-left corter.
  (0...@n).each do |i|
    (0...@n).each do |j|
      # [i,j] postioton of img1 corner on img2.
      tmp = upleft(i,j)
      max = tmp if tmp > max
    end
  end
  # Move down-rigth corter.
  (0...@n).reverse_each do |i|
    (0...@n).reverse_each do |j|
      # [i,j] position of img1 corner on img2.
      tmp = downright(i,j)
      max = tmp if tmp > max
    end
  end
  return max
end

def upleft(i,j)
  i1,j1 = 0,0 # Always top-left.
  i2,j2 = i,j # Changes.
  di_limit, dj_limit = @n - i, @n - j
  ans = 0
  (0...di_limit).each do |di|
    (0...dj_limit).each do |dj|
      cell1 = @img1[i1+di][j1 + dj]
      cell2 = @img2[i2+di][j2 + dj]
      ans += 1 if 1 == cell1 && 1 == cell2
    end
  end
  return ans 
end

def downright(i,j)
  i1, j1 = @n-1, @n-1 # Always bottom-right.
  i2, j2 = i, j # For img2 changes.
  di_limit, dj_limit = i+1, j+1
  ans = 0
  (0...di_limit).each do |di|
    (0...dj_limit).each do |dj|
      cell1 = @img1[i1-di][j1 - dj]
      cell2 = @img2[i2-di][j2 - dj]
      ans += 1 if 1 == cell1 && 1 == cell2
    end
  end
  return ans
end

