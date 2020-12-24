p "alias x='ruby 20201224_Thursday/20201224.rb'" 

require 'minitest/autorun'



def checker(nums)
    tmp = [0] + nums
    even_sum = tmp.each.with_index.sum{|el,i| i.even? ? el : 0 }
    odd_sum = tmp.each.with_index.sum{|el,i| i.odd? ? el : 0 }
    prefix_sum = []
    tmp_even_sum, tmp_odd_sum = 0,0
    tmp_even_reminder, tmp_odd_reminder = even_sum, odd_sum
    counter = 0
    tmp.each_with_index do |el,i|
        if i.even?
            tmp_even_sum += el
            tmp_even_reminder -= el
        else
            tmp_odd_sum += el
            tmp_odd_reminder -= el
        end
        tmp = [tmp_even_sum, tmp_even_reminder, tmp_odd_sum,  tmp_odd_reminder  ]
        prefix_sum.push(tmp)
    end
    (1...prefix_sum.size).each do |i|
        prv = prefix_sum[i-1]
        cur = prefix_sum[i]
        even = prv[0] + cur[3]
        odd =  prv[2] + cur[1]
        counter += 1 if even == odd
    end
    counter
end

def ways_to_make_fair(nums)
    nums.unshift(0)
    sums = [0,0]
    counter = 0
    nums.each_with_index do |el,i|
        if i.even?
            sums[0] += 1
        else
            sums[1] += 1
        end
    end
    e_sum, o_sum = 0,0
    (1...nums.size).each do |i|
        el = nums[i]
        e_tmp, o_tmp = 0,0
        if i.even?
            e_tmp = e_sum + el
        else
            o_tmp = o_sum + el
        end
        # Prev sum minus reminder.
        counter += 1 if e_sum + (sums[1] - o_tmp) == o_sum + (sums[0] - e_sum)
        e_sum, o_sum = e_tmp, o_tmp
    end
    counter
end

describe "Leetcode: 1664. Ways to Make a Fair Array." do
    it "Simplest test must work." do
        test = [1,1,1]
        assert_equal checker(test.clone),ways_to_make_fair(test.clone)
    end
end