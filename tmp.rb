# Ruby: 'abc'[0..2] and 'abc'[0...2] and 'abc'[0,2]. 
# https://ruby-doc.org/core-2.7.0/String.html#method-i-5B-5D
p "abc"[0..2] == "abc" # true
p "abc"[0,2] == "ab" # true
p "abc"[0...2] == "ab" # true