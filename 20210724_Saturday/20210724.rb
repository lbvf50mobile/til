# Leetcode: 126. Word Ladder II.
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/611/week-4-july-22nd-july-28th/3825/
# @param {String} begin_word
# @param {String} end_word
# @param {String[]} word_list
# @return {String[][]}
def find_ladders(begin_word, end_word, word_list)
  # Check is there end_work in the word_list.
  @i_end = word_list.index(end_word)
  @wl = word_list
  @parent = Array.new(@wl.size)
  @steps = Array.new(@wl.size,0)
  return [] if ! @i_end
  @adj_list = {}
  @wl.each{|w| @adj_list[w] = []}
  create_adj_list()
  # in action. 
end

def bfs()
  used = Array.new(@wl.size)
  q = [@i_end]
  used[@i_end] = true
  level = 0
  while ! q.empty?
    i = q.shift()
    level += 1
    @adj_list[i].each do |j|
      if ! used[j]
        q.push[j]
        used[j] = true
        @parent[j] = i
        @steps[j] = level
      end
    end
  end
end

def create_adj_list()
  (0...@wl.size-1).each do |i|
    (i+1...@wl.size).each do |j|
      if 1 == diff(@wl[i],@wl[j])
        @adj_list[i].push(j)
        @adj_list[j].push(i)
      end
    end
  end
end

def diff(a,b)
  ans = a.size
  (0...a.size).each do |i|
    ans -= 1 if a[i] == b[i]
  end
  ans
end
