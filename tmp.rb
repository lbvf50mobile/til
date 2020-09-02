
# Each element is a reference to unique object, all references are different:
a = Array.new(3).map{ " "}
p a.map{|x| x.object_id} # [14919680, 14919660, 14919620]
p a # [" ", " ", " "]
a[0] << "new value."
p a # [" new value.", " ", " "]

# Each element is a reference to single object, all references are the same:
a = Array.new(3," ")
p a.map{|x| x.object_id} # [2228180, 2228180, 2228180]
p a # [" ", " ", " "]
a[0] << "new value."
p a # [" new value.", " new value.", " new value."]

# Each element is a reference to single object, all references are the same:
a = [" "]*3
p a.map{|x| x.object_id} # [20764780, 20764780, 20764780]
p a # [" ", " ", " "]
a[0] << "new value."
p a # [" new value.", " new value.", " new value."]