def moves; [[1,2],[2,1],[2,-1],[1,-2],[-1,-2],[-2,-1],[-2,1],[-1,2]]; end
def str2arr str; str.split(';').map{ |cell| [cell[0].ord - ?a.ord ,cell[1].to_i - 1]} end
def valid_cell cell; cell[0].between?(0,7) && cell[1].between?(0,7) end
def possible_turns(cell); moves.reduce([]){ |mem,(x,y)| a = [cell[0]+x,cell[1]+y]; valid_cell(cell) && mem.push(a); mem}; end
require 'colorize'
def bfs(burn, final)
    used = {}
    level = 0
    used[burn.first] = level
    while !burn.empty?
        x = burn.shift
        level = used[x]
        puts "#{x} #{level}"
        break if x == final
        puts "#{possible_turns(x)}"
        possible_turns(x).each do |x|
            if used[x].nil?
                used[x] = level+1;
                burn.push(x)
            end
        end
    end
    level
end
bfs([[ 5, 3 ]],[ 1, 8 ])