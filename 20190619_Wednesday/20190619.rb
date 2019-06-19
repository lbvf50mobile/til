p "alias x='ruby 20190619_Wednesday/20190619.rb'" 

# Ruby Enumerable#grep

p [?a,1,2,?c,?e].grep(Fixnum)
p [?a,1,2,?c,?e,3,4].grep(1..2)
p [?a,1,2,?c,?e,3,4,'aaa', 'will not be selected too'].grep(/^[a-c]/)
even = ->x{x.respond_to?(:even?) && x.even?}
odd = ->x{x.respond_to?(:odd?) && x.odd?}
p [?a,1,2,?c,?e,3,4,'aaa', 'will not be selected too'].grep(even)
p [?a,1,2,?c,?e,3,4,'aaa', 'will not be selected too'].grep(odd)
