# Ruby <=> and []

p "alias x='ruby 20181030_Tuesday/20181030.rb'" 

a = 1
b = 1
p ["same",a,b][a <=> b]

a = 2
b = 1
p ["same",a,b][a <=> b]

a = 2
b = 5
p ["same",a,b][a <=> b]