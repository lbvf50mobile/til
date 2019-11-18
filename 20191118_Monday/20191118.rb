# Leetcode: is power of three (four)?

p "alias x='ruby 20191118_Monday/20191118.rb'" 

# Three
# https://gist.github.com/lbvf50mobile/3113a45aefccaa11b6637658d5ae4bba 
# https://leetcode.com/problems/power-of-three/submissions/

# Four
# https://gist.github.com/lbvf50mobile/c35a44987e6246848b51b2434113d43b 
# https://leetcode.com/problems/power-of-four/submissions/

x = 1

10.times do
    p x.to_s(3)
    x *= 3
     
end
p (x/3).to_s(2).size

p /[^1]1{1,2}$/ === '01'
p /^1{1,2}$|[^1]1{1,2}/ === '1'
p /(^|0)1{1,2}$/ === '1'

# https://leetcode.com/problems/power-of-three/submissions/
# Runtime: 96 ms, faster than 12.50% of Ruby online submissions for Power of Three.
# Memory Usage: 9.2 MB, less than 100.00% of Ruby online submissions for Power of Three.
def is_power_of_three(n)
    return true if n == 1
    return false if 0 != n%3
    return false if n <= 0
    return is_power_of_three(n/3)
end

# https://leetcode.com/problems/power-of-four/submissions/
# Runtime: 40 ms, faster than 37.50% of Ruby online submissions for Power of Four.
# Memory Usage: 9.5 MB, less than 100.00% of Ruby online submissions for Power of Four.
def is_power_of_four(num)
    return false if num < 1
    return true if num == 1
    0 == Math.log2(num)%2
end