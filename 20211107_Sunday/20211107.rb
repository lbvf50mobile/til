# Leetcode: 43. Multiply Strings.
# https://leetcode.com/problems/multiply-strings/ 
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 128 ms, faster than 34.92% of Ruby online submissions for Multiply Strings.
# Memory Usage: 213.2 MB, less than 6.35% of Ruby online submissions for Multiply Strings.
# @param {String} num1
# @param {String} num2
# @return {String}
def multiply(num1, num2)
  conv = ->x{x.chars.map(&:to_i).reverse}
  n1,n2 = conv[num1],conv[num2]
  ans = [0]
  n1.each_with_index do |el,i|
    tmp = n2.clone
    mul_by_digit(el,tmp)
    # p [el,str(n2),str(tmp)]
    mul_by_power(i,tmp)
    add(tmp,ans)
  end
  ans = str(ans)
  ans.gsub!(/^0+/,"")
  ans == "" ? "0" : ans
end
def str(x)
  x.reverse.map(&:to_s).join
end

def mul_by_digit(digit, number)
  next_digit = 0
  (0...number.size).each do |i|
    num = number[i]
    tmp = num*digit
    number[i] = (tmp+next_digit)%10
    next_digit = (tmp+next_digit)/10
  end
  number.push(next_digit) if next_digit > 0
  number
end

def mul_by_power(power, number)
  power.times{ number.unshift(0)}
  number
end

def add(a,b)
  max = [a.size, b.size].max
  (max-a.size).times{ a.push(0)}
  (max-b.size).times{ b.push(0)}
  tmp = 0
  max.times do |i|
    x  = (a[i] + b[i] + tmp)
    b[i] = x%10
    tmp = x/10
  end
  b.push(tmp) if tmp > 0
  b
end

