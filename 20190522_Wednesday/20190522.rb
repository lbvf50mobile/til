p "alias x='ruby 20190522_Wednesday/20190522.rb'" 

# Ruby sort in descending order by a.sort_by{|x| -x}

puts "Ruby sort in descending order by a.sort_by{|x| -x}"
a = (1...10).to_a
p a.sort.reverse
p a.sort_by{|x| -x}
p a.sort.reverse == a.sort_by{|x| -x}