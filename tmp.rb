require 'pp'
require 'colorize'
# https://app.codesignal.com/interview-practice/task/5vXzdE9yzjsoMZ9sk
3.times do puts "" end
puts "swapLexOrder".cyan
puts ""

#require "minitest/autorun"
require 'benchmark'


def adjacency_list(u)
    aj = {}
    u.each do |x,y|
        aj[x] = aj[x] ? aj[x].push(y) : [y]
        aj[y] = aj[y] ? aj[y].push(x) : [x]
    end
    aj
end
def dfs(v,used,comp,aj)
    used[v] = 1
    comp.push(v)
    aj[v].each do |to|
        dfs(to,used,comp,aj) if used[to].nil?
    end
end
def dsu(u)
    aj = adjacency_list(u)
    vertex = aj.keys
    used = {}
    connected = []
    puts "aj: #{aj}".cyan
    vertex.each do |v|
        puts "v: #{v} used: #{used}"
        if used[v].nil?
            comp = []
            dfs(v,used,comp,aj)
            connected.push(comp.sort)
            puts "comp: #{comp}".cyan
        end
    end
    connected
end

def sort_index(str,pairs)
    # Save array of [indexes,char_by_these_indexes]
    pairs = pairs.map do |ids|
        chars = ids.reduce([]){|s,i| s.push(str[i-1]); s}.sort.reverse
        ids.each_with_index do |pos,i|
            str[pos-1] = chars[i]
        end
    end
    str.join
end
def dsu_my(u)
    (0..u.size-1).each do |i|
        next if u[i].nil?
        (0..u.size-1).each do |j|
            next if i == j
            next if u[j].nil?
            if u[i].any?{|x| u[j].include?(x)}
                u[i] = (u[i] + u[j]).uniq
                u[j] = nil
            end
        end
    end
    u.compact.map{|x| x.sort}
end
def swapLexOrder(str, pairs)
    pairs1_2 = dsu(pairs.clone)
    pairs = dsu_my(pairs.clone)
    
    puts "ds0: #{str} : #{pairs}".green
    puts "ds1: #{str} : #{pairs1_2}".red
    puts "#{pairs1_2.sort == pairs.sort}"
    str = str.chars
    sort_index(str,pairs)
end

def swapLexOrder_time(str, pairs)
    repeat = 1
    time_dsu = Benchmark.measure {
        repeat.times{pairs = dsu_my(pairs)}
    }
    str = str.chars
    ans = ""
    time_sort = Benchmark.measure{
        repeat.times{ans = sort_index(str.clone,pairs)}
    }
    puts "dsu: #{time_dsu.real.round(2)} ".green
    puts "srt: #{time_sort.real.round(2)}".cyan
    ans
end

Tests = [
    "abdc",
    [[1, 4], [3, 4]],
    "dbca",
    "abdc",
    [[1,4], 
    [3,4]],
    "dbca",
    "abcdefgh",
    [[1,4], [7,8]],
    "dbcaefhg",
    #----------------
    "acxrabdz",
    [[1,3], [6,8], [3,8], [2,7]],
    "zdxrabca",
    #---------------
    "z",
    [],
    "z",
    #------------
    "dznsxamwoj",
    [[1,2], [3,4], [6,5], [8,10]],
    "zdsnxamwoj",
    #---
    "fixmfbhyutghwbyezkveyameoamqoi",
    [[8,5], 
 [10,8], 
 [4,18], 
 [20,12], 
 [5,2], 
 [17,2], 
 [13,25], 
 [29,12], 
 [22,2], 
 [17,11]],
 "fzxmybhtuigowbyefkvhyameoamqei",
 "lvvyfrbhgiyexoirhunnuejzhesylojwbyatfkrv",
 [[13,23], 
 [13,28], 
 [15,20], 
 [24,29], 
 [6,7], 
 [3,4], 
 [21,30], 
 [2,13], 
 [12,15], 
 [19,23], 
 [10,19], 
 [13,14], 
 [6,16], 
 [17,25], 
 [6,21], 
 [17,26], 
 [5,6], 
 [12,24]],
 "lyyvurrhgxyzvonohunlfejihesiebjwbyatfkrv"

]

Tests.each_slice(3){|str,pairs,ans|  swapLexOrder(str, pairs)}

