# Leetcode: is power of three?

p "alias x='ruby 20191118_Monday/20191118.rb'" 

x = 1

10.times do
    p x.to_s(2).rjust(15," ")
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