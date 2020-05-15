p "alias x='ruby 20200515_Friday/20200515.rb'" 


# fillingBlocks https://app.codesignal.com/interview-practice/task/yWF4MmhvtmzfKNWgt

def fillingBlocks(n)
    @n = n
    @c = 0
    array = Array.new(2).map{ Array.new(5,0)}
    rec(array,0)
end

def rec(array, index)
    
    filled = [1,1,1,1,0]
    p "Start."
    p index
    p array[0]
    p array[1]
    p "------------"
    if @n - 1 == index && array[0] == filled && array[1].all?{|x| 0 == x}
        return 1 
    end
    return 0 if @n == index
    if 1 == array[0][4]
        p "Here must be return 0."
        return 0
    end
    return 0 if array[0].any?{|x| x > 1}
    if array[0] == filled
        new_array = [array[1].clone, Array.new(5,0)]
        return rec(new_array,index+1)
    end
    first_zero = array[0].index(0)
    p "first zero is #{first_zero}"
    horizontal = [array[0].clone, array[1].clone]
    vertical = [array[0].clone, array[1].clone]
    horizontal[0][first_zero] += 1
    horizontal[0][first_zero+1] += 1
    vertical[0][first_zero] += 1
    vertical[1][first_zero] += 1
    p "call #{[horizontal, index]} "
    p "call #{[vertical, index]} "
    a = rec(horizontal, index) 
    b = rec(vertical, index)
    p "the a is #{a}"
    p "the b is #{b}"
    p "and I'm retun"
    return a + b
end

p fillingBlocks(3) # 11

