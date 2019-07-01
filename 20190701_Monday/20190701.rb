p "alias x='ruby 20190701_Monday/20190701.rb'" 

# Ruby: M in big O notation could be less then 1. Example in sum of an Arithemtic progression.  thnx @aragaer

# is O(n*n) because of summ= of Arithmetic Progression. thnx @aragaer
x = [*1..5]
x.each_with_index{|v1,i| x[i+1..-1].each{|v2| p [v1,v2]}}

# https://en.wikipedia.org/wiki/Arithmetic_progression s = n(n-1)/2
# https://en.wikipedia.org/wiki/Big_O_notation if and only if there exists a positive real number M and a real number x0 such that
# https://en.wikipedia.org/wiki/Real_number In mathematics, a real number is a value of a continuous quantity that can represent a distance along a line.