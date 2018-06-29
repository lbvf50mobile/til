# Ruby ClassName#[] method.

p "alias x='ruby 20180629_Friday/20180629.rb'" 

module Til
    class ArrLike
        def self.[](x)
            x*10
        end
    end
end

p Til::ArrLike[1]
p Til::ArrLike[2]

