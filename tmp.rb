# Splat Operator works with Enumerable.
def cool_splat x
    [*x]
end
p cool_splat(1..2) # [1,2]
p cool_splat([1,2]) # [1,2]
p cool_splat([1,2].each_with_index) # [[1,0],[2,1]]
p [1,2].each_with_index # #<Enumerator: [1, 2]:each_with_index>
p [1,2].each_with_index.class.ancestors
p [1,2].class.ancestors
p (1..2).class.ancestors
p [[1,2],(1..2),[1,2].each].map{|x| x.is_a? Enumerable}