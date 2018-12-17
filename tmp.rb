# https://gist.github.com/lbvf50mobile/61d322dc9f1a764523d80090c8fa791b
# https://stackoverflow.com/a/1217114/8574922
p [[?a,?b],[?c,?d]].map(&:join)
# &:join is a shortcut for :join.to_proc 
p [[?a,?b],[?c,?d]].map(&:join.to_proc)
# &:join.to_proc  equal to Proc.new{|o| o.send :join}
p [[?a,?b],[?c,?d]].map(&Proc.new{|o| o.send :join})
