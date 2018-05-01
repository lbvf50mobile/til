class SuperBase
    @options = {b: 1}
    def self.options
        self.ancestors.map { |ancestor| ancestor.instance_variable_get(:@options) }.compact.reduce(:merge) 
    end
end
class Z < SuperBase
    @options = {z: 1}
    
end
class P < Z
    @options = {p: 1}
  
end

class C < P
    @options = {c: 2}
   
end
class C1 < P
    @options = {c: 22}
    def self.jopa
        p "here must me supper"
        p super
    end
   
end
p Z.options
p P.options
p C.options
p C1.options
p C1.jopa

# self.ancestors.map { |ancestor| ancestor.instance_variable_get(:@options) }.compact.reduce({}) { |acc, e| acc.merge(e) }