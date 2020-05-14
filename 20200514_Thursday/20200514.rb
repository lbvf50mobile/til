p "alias x='ruby 20200514_Thursday/20200514.rb'" 

# fillingBlocks https://app.codesignal.com/interview-practice/task/yWF4MmhvtmzfKNWgt

def n2a(n)
    [n.to_s(2).rjust(4,?0).chars.map(&:to_i), Array.new(4,0)]
end
def a2n(a)
    a.map(&:to_s).join.to_i(2)
end

# important do not use memoization here. 
# will_be: {14=>[15], 12=>[15, 12], 8=>[15, 12, 15], 0=>[15, 12, 15, 15, 12]} erorr
def rec_adjacency(a)
    if a[0].all?{|x| 1 == x}
        return [a2n(a[1])]
    end
    if a[0].any?{|x| 1 < x}
        return []
    end
    # and here
    ans = []
    (0...4).each do |i|
        cur_vert = [a[0].clone, a[1].clone]
        cur_horz = [a[0].clone, a[1].clone]
        if cur_vert[0][i] == 0
             cur_horz[0][i] += 1
             cur_horz[1][i] += 1
             ans += rec_adjacency(cur_horz)
             if i <= 2
                cur_vert[0][i] += 1
                cur_vert[0][i+1] += 1
                ans += rec_adjacency(cur_vert)
             end
            break
        end
    end
    # Memoization removed here.
    ans
end
def create_adjacency()
    @adjacency = {}
    (0..15).each do |n|
        @adjacency[n] = rec_adjacency(n2a(n)) 
    end
    return @adjacency
end
def fillingBlocks(n)
    create_adjacency()
    @n = n
    @dp = Array.new(n+1)
    rec(0,0)

end
def rec(i,number)
    return 1 if  i == @n && 0 == number
    return 0 if i == @n 
    return @dp[i] if @dp[i]
    ans = 0
    @adjacency[number].each do |nxt|
        ans += rec(i+1, nxt)
    end
    @dp[i] = ans
end

p n2a(0)
p n2a(7)
p a2n([0, 1, 1, 1])
p a2n([0,0,0,0])
p a2n([1,1,1,1])


p rec_adjacency(n2a(0))
p create_adjacency()

puts "Filling Blocks."
p fillingBlocks(1)
p fillingBlocks(2)
p fillingBlocks(3) #5 but must be 11

