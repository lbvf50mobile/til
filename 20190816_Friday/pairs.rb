class Task
    def pairs(arr)
        # arr.group_by{|x| x }.sum{|x,y|  y.size/2 }
        arr.group_by{|x| x }.reduce(0){|mem, (x, y)| mem += y.size/2; mem}
    end
end
