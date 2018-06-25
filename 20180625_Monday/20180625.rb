# Ruby Array#product.

p "alias x='ruby 20180625_Monday/20180625.rb'" 

a = %w{o tw th f}
b = %w{o1 tw1 th1 f1}
c = %w{o2 tw2 th2 f2}
d = %w{o3 tw3 th3 f3}

p a.product(b).reduce(:+).join

a.product(b).product(c){ |(x,y),z| p [x,y,z]}
p a.product(b).reduce(:+).product(c).reduce(:+).join

a.product(b).product(c).product(d){|((x,y),z),zz| p [x,y,z,zz] }
