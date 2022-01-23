# Leetcode: 1291. Sequential Digits.
# https://leetcode.com/problems/sequential-digits/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 102 ms, faster than 100.00% of Ruby online submissions for Sequential Digits.
# Memory Usage: 209.6 MB, less than 100.00% of Ruby online submissions for Sequential Digits.
# @param {Integer} low
# @param {Integer} high
# @return {Integer[]}
def sequential_digits(low, high)
  @answer = []
  @l,@h = low, high
  (2..9).each do |n|
    left = 10**(n-1)
    right = (10**n) - 1
    if @l <= right && @h >= left
      add_size(n)
    end
  end
  @answer
end
def add_size(n)
  (1..9).each do |i|
    number = get_number(i,n)
    if number && number.between?(@l,@h)
      @answer.push(number)
    end
  end
end
def get_number(i,n)
  size = 10 - i
  return false if n > size
  ans = i
  place = i+1
  (n-1).times do 
    ans *= 10
    ans += place 
    place += 1
  end
  ans
end

