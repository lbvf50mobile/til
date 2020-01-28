p "alias x='ruby 20200128_Tuesday/20200128.rb'" 
require 'colorize'

# https://leetcode.com/problems/domino-and-tromino-tiling/
# 790. Domino and Tromino Tiling
# 1-5 works
# @param {Integer} n
# @return {Integer}
def num_tilings(n)
    @dp = Array.new(n+1).map{ Array.new(4)}
    @moves = [[0,1,2,3],[2,3],[1,3],[0]]
    @dp[1][0] = 1
    @dp[1][1] = 0
    @dp[1][2] = 0
    @dp[1][3] = 1
    ans = rec(n,0)
    puts "https://leetcode.com/problems/domino-and-tromino-tiling/"
    puts "n = #{n}"
    @dp.each{|x| p x}
    ans
end

def rec(column,type)
    puts "I entered #{column} and it's type=#{type}" if 6 == column
    return @dp[column][type] if @dp[column][type]
    puts "And it does not hit the cache" if 6 == column
    ans = 0
    @moves[type].each do |subtype|
        tmp = rec(column-1,subtype)
        puts "And now I'm calling subtypes subtype = #{subtype} and it's value is #{tmp}" if 6 == column
        ans += tmp
        puts "And the sum after #{subtype} is #{ans}" if 6 == column
    end
    puts "Ok calling subtypes is finished let take a look on ans #{ans}" if 6 == column
    puts "ans % (10^9 + 7) - error was in copypasting. ^ - is not a power operation in Ruby!".red
    ans = ans % (10**9 + 7)
    puts "And let take a look on ans after modulo #{ans}" if 6 == column
    @dp[column][type] = ans
    ans
end

num_tilings(5)
num_tilings(6)