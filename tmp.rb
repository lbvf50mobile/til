# Return all possible triangles.
# https://leetcode.com/problems/valid-triangle-number/

def triangles array
    ans = []
    array.combination(2).each{|a,b|
      array.each{|c| ans.push [a,b,c] if c > a+b}
    }
 ans
end

def trr2 array
    ans = []
    (0...array.size-2).each do |ai|
        (ai+1...array.size-1).each do |bi|
            (bi+1...array.size).each do |ci|
                a,b,c = [array[ai],array[bi],array[ci]]
                ans.push [a,b,c] if a+b > c && a+c > b && b+c > a
                
            end
        end
    end
    ans
end


p trr2([1, 2, 3, 5, 6, 6, 10]).size # 20

# https://leetcode.com/problems/valid-triangle-number/submissions/
# @param {Integer[]} nums
# @return {Integer}
# Runtime: 108 ms, faster than 100.00% of Ruby online submissions for Valid Triangle Number.
# Memory Usage: 9.8 MB, less than 100.00% of Ruby online submissions for Valid Triangle Number.

def triangle_number(a)
    a.sort!
    r = 0
    (2...a.size).reverse_each do |i|
        s = a[i]
        lo = 0
        hi = i - 1
        while lo < hi
            if a[lo] + a[hi] <= s
                lo += 1
                next
            end
            r += hi - lo
            hi -= 1
        end
    end
    r
    
end