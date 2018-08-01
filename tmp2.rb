# https://www.codewars.com/kata/union-of-intervals/train/ruby

# https://apidock.com/ruby/Enumerable/chunk


# 1) Get chunk
# belongs to
# Left in array
# right in array

# 2) Substitute min-max

# 3) Gule into the Array.



def interval_insert (myl, interval)
    myl.reject!{|x| x[0] > interval[0] && x[1] < interval[1]} #belongs too
    myl
end

p a = interval_insert([[1, 2]], [3, 4])
p b = interval_insert([[1, 2], [3, 4]], [2, 3])
p c = interval_insert([[1, 2], [3, 4], [5, 6]], [2, 3])

