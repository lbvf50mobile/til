# Ruby a,*,b=[1,7,7,3] lonely splat operator in multiple assignment.

p "alias x='ruby 20190116_Wednesday/20190116.rb'" 

# @funk_yourself a,*,b = [1,?z,?z,?z,1]
# @beastia https://ruby-doc.org/core-2.2.0/doc/syntax/calling_methods_rdoc.html

a, *, b = [1,?z,?z,?z,?z,2]
p a
p b

a, *rest, z = %w{a the long road z}
p a # a
p z # z
p rest # ['the', 'long', 'road']

a, *, z = %w{a the long road z}
p a # a
p z # z
# https://stackoverflow.com/questions/54216456/correct-naming-of-lonely-no-variable-name-splat-operator-in-ruby-multiple-assi