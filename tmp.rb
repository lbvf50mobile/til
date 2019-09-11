# https://www.codewars.com/kata/the-millionth-fibonacci-kata/train/javascript
prev1,prev2,cur = 1,0,0
open('tmp.txt',?a) {|f|
        f.puts "0n,"
        f.puts '1n,' 
        (2..2_000).each do |x|
            cur = prev1 + prev2
            f.puts "#{cur}n,"
            prev2 = prev1
            prev1 = cur
        end
}


