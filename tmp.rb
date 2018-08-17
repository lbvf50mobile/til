require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/xrFgR63cw7Nch4vXo

puts "gropingDishes".cyan

require "minitest/autorun"



def groupingDishes(dishes)
    hash = {}
    dishes.each do |array_row|
        value = array_row.shift
        array_row.each do |ingredient|
            hash[ingredient] ||= []
            hash[ingredient].push(value)  
        end 
    end
    hash.select!{|key,value| 2 <= value.sort!.size }
    hash.sort.map(&:flatten)
end
 
def testing(dishes,answer)
    assert_equal answer, groupingDishes(dishes)
end

describe "Hash" do
    it "solve first eaxmple" do
        dishes = [["Salad", "Tomato", "Cucumber", "Salad", "Sauce"],
            ["Pizza", "Tomato", "Sausage", "Sauce", "Dough"],
            ["Quesadilla", "Chicken", "Cheese", "Sauce"],
            ["Sandwich", "Salad", "Bread", "Tomato", "Cheese"]]


        answer = [["Cheese", "Quesadilla", "Sandwich"],
        ["Salad", "Salad", "Sandwich"],
        ["Sauce", "Pizza", "Quesadilla", "Salad"],
        ["Tomato", "Pizza", "Salad", "Sandwich"]]

        assert_equal answer, groupingDishes(dishes)
    end
    it "solve first eaxmple1" do
        dishes = [["Salad", "Tomato", "Cucumber", "Salad", "Sauce"],
            ["Pizza", "Tomato", "Sausage", "Sauce", "Dough"],
            ["Quesadilla", "Chicken", "Cheese", "Sauce"],
            ["Sandwich", "Salad", "Bread", "Tomato", "Cheese"]]
        answer = [["Cheese", "Quesadilla", "Sandwich"],
        ["Salad", "Salad", "Sandwich"],
        ["Sauce", "Pizza", "Quesadilla", "Salad"],
        ["Tomato", "Pizza", "Salad", "Sandwich"]]
        testing(dishes,answer)
    end
   
end