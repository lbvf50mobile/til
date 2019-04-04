p "alias x='ruby 20190404_Thursday/20190404.rb'" 

# Ruby Create Angram.

# https://codefightssolver.wordpress.com/2016/10/21/create-anagram/
def createAnagram(s, t)
    s_h = (?A..?Z).reduce({}){|memo,x| memo[x] = 0; memo}
    t_h= (?A..?Z).reduce({}){|memo,x| memo[x] = 0; memo}
    
    s.chars.each_with_index do |value, index|
        s_h[s[index]] += 1
        t_h[t[index]] += 1
    end
    p s_h
    p t_h
    p s_h.values.zip(t_h.values)
    p s_h.values.zip(t_h.values).map{|x,y| (x-y).abs}

    s_h.values.zip(t_h.values).map{|x,y| (x-y).abs}.reduce(:+)/2
    

end
s = "AABAA"
t = "BBAAA"
p createAnagram(s, t)
s = "AAAAB"
t = "AAAAC"
p createAnagram(s, t)

