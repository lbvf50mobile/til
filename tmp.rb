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
    (0...array.size-1).each do |ai|
        (ai+1...array.size).each do |bi|
            (0...array.size).each do |ci|
                if( ai != bi && bi != ci && ci != ai)
                    a,b,c = array[ai], array[bi], array[ci]
                    ans.push [a,b,c] if a+b < c && a+c < b && c+b < a
                end
            end
        end
    end
    ans
end

p triangles([1,2,4]) # [1,2,4]
p triangles([1, 2, 3, 5, 6, 6, 10]).size # 20

p trr2([1,2,4]) # [1,2,4]
p trr2([1, 2, 3, 5, 6, 6, 10]).size # 20