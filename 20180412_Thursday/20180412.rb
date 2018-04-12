# Proc to a block
z = ->(x){ p x}
3.times &z

count = 0
no_arg = ->{p "yes: #{count}"; count += 1; raise StopIteration if count > 3}
p no_arg
loop &no_arg

begin
    3.times &no_arg
rescue =>x
    p "If no argument lambda for Fixnum#times Happens '#{x.message}'"
end