p "alias x='ruby 20190427_Saturday/20190427.rb'" 

# Ruby Hash#default.

a = {a:1}
b = {a:1}
a.default = 7
p a[100] # 7
p b[100] # nil

p [a == b, a === b] # [true, true]

# Merge dose not change the array
p a.merge({z:1}) # a:1, z:1
p a
