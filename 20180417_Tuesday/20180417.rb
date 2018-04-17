# Throw/catch

def x(y)
    throw :e if y == 2
    p "Y: #{y}"
end

catch :e do
    (1..3).each do |y|
        p y
        5.times do |z|
            p "Z: #{z}"
            p "Y: #{y}"
            x(y)
        end
    end

end
