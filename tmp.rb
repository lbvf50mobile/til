

hash = {a:1, b:{b1: 1, b2:{b3:4, b4:5}}, c: 8}

def recursive_print argument
    argument.each{|key, value| 
        if(Hash == value.class)
            p key
            recursive_print value
        else 
            p key, value
        end
    }
end

recursive_print(hash)