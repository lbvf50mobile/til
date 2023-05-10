# Leetcode: 59. Spiral Matrix II.
# https://leetcode.com/problems/spiral-matrix-ii/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 76 ms, faster than 87.50% of Ruby online submissions for Spiral
# Matrix II.
# Memory Usage: 210.9 MB, less than 93.75% of Ruby online submissions for Spiral
# Matrix II.
# 2023.05.10 Daily Challenge.
# @param {Integer} n
# @return {Integer[][]}
def generate_matrix(n)
  dr = 0 # 0 - right, 1 - bottom, 2 - Left, 3 - up; direction.
  dt = [ # delta;
         [0,1], # Right.
         [1,0], # Bottom.
         [0,-1], # Left.
         [-1,0], # Up.
  ]
  i, j = 0, 0
  val = 1
  ns = n # Number of steps.
  line = 0 # Change ns every two lines. 
  steps = 0
  ans = Array.new(n){ Array.new(n)}
  (n*n).times do 
    #p [i,j,val,line]
    ans[i][j] = val
    val += 1
    steps += 1
    # Line finished need to change direction.
    if ns == steps
      steps = 0
      dr = (dr + 1) % 4
      if 0 == line
        ns -= 1
      end
      line = (line + 1 ) % 2 # 0, 1
    end
    i,j = i + dt[dr][0], j + dt[dr][1]
  end
  ans
end
