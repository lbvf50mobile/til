# What happens if define a method inside other method?

def a
    p %{this is method a}
    def b(explanation)
        p %{this is method b inside a}
        p explanation
    end
    b("Called from method A")
end
a()
b("Called from the main object scope")

class TwoMethods
    def a
        p "This is #a of TwoMethods"
        def b
            p "This is #b of TwoMethods"
        end
    end
end

two = TwoMethods.new
two.a
two.b
