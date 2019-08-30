p "alias x='ruby 20190830_Friday/20190830.rb'" 

# Ruby: Array#take_while, change argument in block, Prime.first(n), -1 is an argument and  - 1 is substraction.

def minimum_steps(v, n)
    v.sort.take_while{|x| (n -= x) > 0}.size
end

p minimum_steps([8 , 9, 4, 2], 23)  == 3

require 'prime'
p [2,3] == Prime.first(2)

begin
    [1,2].size -1
rescue => exception
    p "[1,2].size -1 =>#{exception.message}"
end

p [1,2].size - 1 == 1

