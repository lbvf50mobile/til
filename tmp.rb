# @LazyNick
=begin
You have an array of ints. Create function which groups numbers by sum of pairs
(sum = 5). Each element of array has to be used only once.
---
test data:
input: [22, 3, 5, 0, 2, 2]
resutls: [[3, 2], [5, 0]]

input: [-5, 33, 2, 2, 3, 5, 0, 10, 3]
resutls: [[-5, 10], [2, 3], [2, 3], [5, 0]]

input: [5, 5, 5, 0, 0, 0, 5]
resutls: [[5, 0], [5, 0], [5, 0]]
=end


require "minitest/autorun"

input = [22, 3, 5, 0, 2, 2]
resutls = [[3, 2], [5, 0]]

def solution(x,sum)
    answer = []
    hash = {}
    used = {}
    x.each_with_index do |value, new_index|
        old_index = hash[sum - value] 
        if old_index && used[new_index].nil? && used[old_index].nil?
            answer.push([x[old_index],value])
            used[new_index] = true
            used[old_index] = true
        else 
            hash[value] = new_index
        end
        
    end
    
end

p solution(input,5)

describe "Find sum" do
    it "return right answer" do
    end
end