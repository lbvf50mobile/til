p "alias x='ruby 20190904_Wednesday/20190904.rb'" 
 
# Ruby: call method by :symbol; send(:name,x,y) public_send(:name,x,y) [only public methods].

def method1 x,y
    p "x = #{x}, y = #{y}"
end
method1(1,2)
send(:method1,'send1','send2')

public
def method2 x,y
    p "x = #{x}, y = #{y}"
end
public_send(:method2,'send1','send2')