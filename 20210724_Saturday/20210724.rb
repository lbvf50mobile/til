# Leetcode: 126. Word Ladder II.
# https://leetcode.com/explore/challenge/card/july-leetcoding-challenge-2021/611/week-4-july-22nd-july-28th/3825/
# this code does not works because need back tracking.
# @param {String} begin_word
# @param {String} end_word
# @param {String[]} word_list
# @return {String[][]}
def find_ladders(begin_word, end_word, word_list)
  # Check is there end_work in the word_list.
  @i_end = word_list.index(end_word) # Get index of end word in the array.
  @i_bgn = word_list.index(begin_word) # Get index of beging word in the array.
  @wl = word_list # Make variable easy to print.
  return [] if ! @i_end # No end word in the array of word_list.

  @adj_list = {} # Star to prepare adjancency list.
  @wl.each_with_index{|_,i| @adj_list[i] = []} # To make code easy, add an array to each word.
  create_adj_list() # Create adjancency list. Fill the hash.
  @parent = Array.new(@wl.size) # Here will be parents, end word have no parrens so it has nil.
  @steps = Array.new(@wl.size,0) #  Here will be number of steps till the end word, end word has 0 steps.
  bfs() # Fill parent and steps

  if @i_bgn # if first word in array just make a way till the end word.
    seq = []
    fill(seq,@i_bgn)
    return [seq]
  end
  arr = find_clothest(begin_word) # Retrun array of indices with minumum steps till end word.
  return [] if ! arr # If there are no words that differs one return empty array.
  answer = []
  arr.each do |i|
    seq = [begin_word]
    fill(seq,i)
    answer.push(seq)
  end
  return answer
end

def find_clothest(word)
  # Find word in worl_list that differs only in one char and nearest to end word.
  index = nil
  min = nil
  @wl.each_with_index{|w,i|
    if 1 == diff(w,word)
      if min.nil? || min < @steps[i]
        min =  @steps[i] # Now minimum is minimum steps from curren word till the end word.
        index = i
      end
    end
  }
  return [] if min.nil?
  (0...@wl.size).select{|i| min == @steps[i]}
end

def fill(ans, start)
  i = start
  ans.push(@wl[i])
  while @parent[i]
    i = @parent[i]
    ans.push(@wl[i])
  end
  ans
end

def bfs()
  used = Array.new(@wl.size)
  q = [[@i_end,0]]
  used[@i_end] = true
  while ! q.empty?
    i,level = q.shift()
    @adj_list[i].each do |j|
      if ! used[j]
        q.push([j,level+1])
        used[j] = true
        @parent[j] = i
        @steps[j] = level+1
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
