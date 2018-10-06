require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/HdgqPhHqs3NciAHqH
3.times do puts "" end
puts "countClouds".green
puts ""




require "minitest/autorun"
require 'benchmark'
require 'oj'
require 'ostruct'


# https://e-maxx.ru/algo/connected_components
def dfs(v,used,adjacency_list)
    used[v] = true
    adjacency_list[v].each do |vertex|
        if used[vertex].nil?
            dfs(vertex,used,adjacency_list,)
        end
    end
end


def countClouds(s)
    check_map = [
        [-1,-1],[0,-1],[+1,-1],
        [-1,0],[+1,0],
        [-1,+1],[0,+1],[+1,+1]
    ]
    adjacency_list = {}
    s.each_with_index do |ar,i|
        ar.each_with_index do |val, j|
            if "1" == val
                puts "#{[i,j]}".green
                adjacency_list[[i,j]] = check_map.reduce([]){|sum, pos|
                    x = i+pos[0]
                    y = j+pos[1]
                    if x>=0 && y >=0 && s[x] && s[x][y] && "1" == s[x][y]
                        sum.push [x,y]
                    end
                    sum
                 }
            end
        end
    end

    pp adjacency_list
    n = 0
    used = {}
    adjacency_list.each_key do |v|
        if used[v].nil?
            n+=1
            dfs(v,used,adjacency_list)
        end
    end

    
    n
end






describe "countClouds" do
    it "shold works" do
        a = [['0', '1', '1', '0', '1'],
        ['0', '1', '1', '1', '1'],
        ['0', '0', '0', '0', '1'],
        ['1', '0', '0', '1', '1']]
        assert_equal 2, countClouds(a)
    end
  
end
