# Leetcode: 1834. Single-Threaded CPU.
# https://leetcode.com/problems/single-threaded-cpu/
# @param {Integer[][]} tasks
# @return {Integer[]}

# https://github.com/kanwei/algorithms/blob/master/lib/containers/heap.rb#L475
class Containers::MinHeap < Containers::Heap
  def initialize(ary=[])
    super(ary) { |x, y| x[1] == y[1]? (x[0] <=> y[0]) == -1: (x[1] <=> y[1]) == -1 }
  end
end

def get_order(tasks)
  time = 0 # Current time.
  i = 0 # Pointer on next to be add by time. 
  n = tasks.size
  answer = []
  tsks = tasks.map.with_index{|(a,b),i|
    [a,b,i]
  }.sort{|a,b|
    if a[0] == b[0] && a[1] == b[1]
      a[2] <=> b[2]
    elsif a[0] == b[0]
      a[1] <=> b[2]
    else
      a[0] <=> b[0]
    end
  }
  heap = MinHeap.new()  
  while answer.size < n
    # Add processes into the heap.
    if i < n
      if 0 == heap.size && time < tsks[i][0] # Error with time! Fixed.
         heap.push(tsks[i]); i += 1;
      else
        while i < n && time >= tsks[i][0] # Same fix.
          heap.push(tsks[i]); i+=1;
        end
      end
    end
    # Take and implement a process.
    process = heap.pop
    time = process[0] + process[1]
    answer.push(process[2])
  end
  return answer
end
