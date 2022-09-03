# Leetcode: 967. Numbers With Same Consecutive Differences.
# https://leetcode.com/problems/numbers-with-same-consecutive-differences/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 231 ms, faster than 100.00% of Ruby online submissions for Numbers With Same Consecutive Differences.
# Memory Usage: 212.5 MB, less than 100.00% of Ruby online submissions for Numbers With Same Consecutive Differences.
# @param {Integer} n
# @param {Integer} k
# @return {Integer[]}
def nums_same_consec_diff(n, k)
  @n, @k = n, k
  answer = (1..9).map{|x| [x] }
  # Interesting. Without brackets @n-1.times, loop for 1.times!
  (@n-1).times do 
    answer = append(answer)
  end
  # Error! Need to add Uniq.
  answer.map{|x| x.map(&:to_s).join.to_i}.uniq
end

def append(arr)
  answer = []
  arr.each do |x|
    curr = x.last
    new_ = curr - @k
    add_new?(answer,x,new_)
    new_ = curr + @k
    add_new?(answer,x,new_)
  end
  answer
end

# Check is new_ appropriate.
# And push if so.
def add_new?(answer,x, new_)
    if new_.between?(0,9)
      answer.push(x.clone.tap{|this| this.push(new_)})
    end
end
