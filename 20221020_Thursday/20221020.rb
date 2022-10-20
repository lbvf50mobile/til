# Leetcode: 12. Integer to Roman.
# https://leetcode.com/problems/integer-to-roman/
# @param {Integer} num
# @return {String}
# Solving Another Task.
def int_to_roman(num)
  answer = 0
  skip = false
  num.split.each_with_index do |char,i|
    next if skip 
    if ?I == char
      if i < num.size - 1 && ?V == num[i+1]
        answer += 4
        skip = true
        next
      end
      if i < num.size - 1 && ?X == num[i+1]
        answer += 9
        skip = true
        next
      end
      answer += 1
    end
    if ?V == char
      answer += 5
    end
    if ?X == char
      if i < num.size - 1 && ?L == num[i+1]
        answer += 40
        skip = true
        next
      end
      if i < num.size - 1 && ?C == num[i+1]
        answer += 90
        skip = true
        next
      end
      answer += 10
    end
    if ?L == char
      answer += 50
    end
    if ?C == char
      if i < num.size - 1 && ?D == num[i+1]
        answer += 400
        skip = true
        next
      end
      if i < num.size - 1 && ?M == num[i+1]
        answer += 900
        skip = true
        next
      end
      answer += 100
    end
    if ?D == char
      answer += 500
    end
    if ?M == char
      answer += 1000
    end
    skip = false
  end
  return answer
end
