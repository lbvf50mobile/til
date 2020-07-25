p "alias x='ruby 20200725_Saturday/20200725.rb'" 

# Leetcode: 1009. Complement of Base 10 Integer.
# https://leetcode.com/problems/complement-of-base-10-integer/
# @param {Integer} n
# @return {Integer}
def bitwise_complement(n)
    puts "#{n} = input"
    return 1 if n.zero?
    answer,power = 0,0
    while n > 0
        puts "Power: #{power}, #{answer}"
        inverse = 0 == n%2 ? 1 : 0
        puts "inverse #{inverse}"
        answer += inverse * (2**power)
        n /= 2
    end
    p answer
end


bitwise_complement(1)
