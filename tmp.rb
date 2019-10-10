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
sum = 5
check = [
    [[22, 3, 5, 0, 2, 2],[[3, 2], [5, 0]]],
    [[-5, 33, 2, 2, 3, 5, 0, 10, 3],[[-5, 10], [2, 3], [2, 3], [5, 0]]],
    [[5, 5, 5, 0, 0, 0, 5],[[5, 0], [5, 0], [5, 0]]],
] 


def solution(x,sum)
    hash = {}
    answer = []


    # Geneerate hash when it has keys ans values and values as array of keys
    x.each_with_index do |value,index|
        hash[value] ? hash[value].push(index) : hash[value] = [index]
    end


    # Generate answer by extracting appropriate values from the hash
    x.each_with_index do |value,index|
        tmp = hash[sum-value]
        if tmp && ! tmp.empty?
            i = tmp.shift 
            answer.push([value,sum-value])  if i > index
        end
    end
    
    answer
end


describe "Find sum" do
    it "return right answer" do
        check.each do |input,output|
            assert_equal output, solution(input,sum)
        end
    end
end