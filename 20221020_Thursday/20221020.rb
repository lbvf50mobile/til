# Leetcode: 12. Integer to Roman.
# https://leetcode.com/problems/integer-to-roman/
# @param {Integer} num
# @return {String}
# Solving Another Task.
# Leetcode: 13. Roman to Integer.
# It is: https://leetcode.com/problems/roman-to-integer/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 264 ms, faster than 13.51% of Ruby online submissions for Roman to Integer.
# Memory Usage: 210.9 MB, less than 93.73% of Ruby online submissions for Roman to Integer.
# 2022.10.20 Daily Challange. Solve another task.
def roman_to_int(num)
# def int_to_roman(num)
  answer = 0
  skip = false
  num.chars.each_with_index do |char,i|
    # p [char,i, skip]
    if skip
      skip = false
      next
    end
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
      skip = false
    end
    if ?V == char
      answer += 5
      skip = false
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
      skip = false
    end
    if ?L == char
      answer += 50
      skip = false
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
      skip = false
    end
    if ?D == char
      answer += 500
      skip = false
    end
    if ?M == char
      answer += 1000
      skip = false
    end
    skip = false # This does not always work.
  end
  return answer
end
