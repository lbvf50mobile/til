rows_size = 4
cols_size = 2
answer = Array.new(rows_size,[])
answer.map{|x| x = Array.new(cols_size,0)}
p answer.all?{|x| x.object_id == answer[0].object_id} # true


answer = Array.new(rows_size,0)
    answer.each_index{|z| answer[z] = Array.new(cols_size,0)}
    p answer.all?{|x| x.object_id == answer[0].object_id} # false
 

    answer = Array.new(rows_size,[])
answer.map{|x| Array.new(cols_size,0)}
p answer.all?{|x| x.object_id == answer[0].object_id} # true



    