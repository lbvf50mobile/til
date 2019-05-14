# Solution for @LazyNick
# http://bit.ly/2LRXyg2
# Find digit deleted form Array.

def find_lost_digit (full_array, messed_array_without_digit)
    hash = {}
    full_array.each{|x| 
        if hash[x].nil?
            hash[x] = {full: 1, messed: 0}
        else
            hash[x] = {full: hash[x][:full]+1, messed: 0}
        end
    }
    messed_array_without_digit.each{|x|
        hash[x] = {full: hash[x][:full], messed: hash[x][:messed]+1}
    }
    hash.to_a.find{|value,h| h[:full] > h[:messed]}[0]
end

p full = (1..4).to_a
p messed = full.shuffle[0...-1]
p find_lost_digit(full, messed)