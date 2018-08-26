require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/FwAR7koSB3uYYsqDp
3.times do puts "" end
puts "FindProfesion".green
puts ""

require "minitest/autorun"
require 'benchmark'

require 'ostruct'
def bs(prof: nil, level: nil, bounds: nil, info: nil)
    if level == info.level - 1
        if info.pos <= bounds.left[1]
            return prof
        else
            return !prof
        end
    end
    if info.pos <= bounds.left[1]
        tmp = bounds.clone
        
        min = tmp.left[0]
        max = tmp.left[1]
        wdt = tmp.width/2
        
        bounds.left = [min, min + wdt - 1]
        bounds.right = [max - wdt + 1,max]
        bounds.width = wdt

        return bs(prof: prof, level:level+1, bounds: bounds, info: info)
    else
        tmp = bounds.clone

        min = tmp.right[0]
        max = tmp.right[1]
        wdt = tmp.width/2
        
        bounds.left = [min, min + wdt - 1]
        bounds.right = [max - wdt + 1,max]
        bounds.width = wdt

        return bs(prof: !prof, level: level+1, bounds: bounds, info: info)
    end
end
def findProfession(level, pos)
    return "Engineer" if 1 == level
    info = OpenStruct.new
    info.level = level
    info.pos = pos
    bounds = OpenStruct.new
    
    min = 1
    max = 2**(level-1)
    wdt = 2**(level-1)/2

    bounds.left = [min, min + wdt - 1]
    bounds.right = [max - wdt + 1,max]
    bounds.width = wdt

    # false - doctor, true - engineer
    bs(prof: true, level: 1, bounds: bounds, info: info) ? "Engineer" : "Doctor"
end

Tests = [
    3,3,"Doctor",
    4,2,"Doctor",
    1,1,"Engineer"

]




describe "Trees" do
  
    it "auto test" do
       Tests.each_slice(3){|level, pos, ans| assert_equal ans,findProfession(level, pos)}
    end
end

