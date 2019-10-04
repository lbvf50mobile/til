# @Qew7777
# https://stackoverflow.com/questions/58221715/ruby-why-rescue-block-value-instead-of-ensure-block/58221899#58221899
def a
    1.some_wierd_method
    "Boom"
rescue NoMethodError
    p "An Error: " + $!.message
ensure
    p "This  value mustbe returned"
end

p a

def boom
    if false
        "a"
    else
        "double a"
    end
end

p boom
