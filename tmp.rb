# Problem delivered by @kotsabiukmv
# Example of similar task by @sanan_yuzb

# Input boolean array. true - space for stand, false - tree.
# Is it possbile to pass all array if character able to jump in bounds min_jump => max_jump

# Solution:
# Two loops one inside another and variables that saves index where characther stands.
# First loop checks that character standing on free space
# Second loop iteratevly search for place where to put a character from max_jump distance to a min_jump.
# In case if there is no such place reutrn false
# In case if ther is such place jump to the next interation of main loop.
# condition check if we out of border size - then returns true.

def can_jump(arr,min_jump, max_jump)
    i = 0
    while arr[i] do
        find_cell = (i+min_jump..i+max_jump).to_a.reverse.any? do |j|
            return true if j >= arr.size
            i = j
            arr[j] 
        end
        return false unless find_cell
    end
    false
end

require 'minitest/autorun'

describe "jump " do
    it "should pass all ture" do
        assert can_jump([true]*10,3,4)
    end
    it 'should fail when first if false' do
        refute can_jump([false]+[true]*10,3,4)
    end
    it "it'should pass if it is possible to jump over" do
        assert can_jump([true]+[false]*3 + [true],3,4)
    end
    it "it should not pass if it is impossibe to jump over" do
        refute can_jump([true]+[false]*4 + [true],3,4)
    end
end