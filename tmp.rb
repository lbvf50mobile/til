p %w{a b c}.each_with_index.map{|x,i| "#{x}:#{i+1}"}
p %w{a b c}.map.with_index(1){|x,i| "#{x}:#{i}"}
p %w{a b c}.each_with_index.map{|x,i| "#{x}:#{i+1}"}
p %w{a b c}.map.with_index(1){|x,i| "#{x}:#{i}"}