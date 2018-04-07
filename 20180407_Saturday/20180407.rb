# Using method as default argument

def  default_run
    p "this is default run"
end

def run(x = method(:default_run))
    x.call
end

def run1(y = -> {p "New default run"})
    y.call
end

run
run ->{p "Argument run"}
run1
run1 ->{p "this is one more Argument Run"}