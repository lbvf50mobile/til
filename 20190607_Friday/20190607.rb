p "alias x='ruby 20190607_Friday/20190607.rb'" 

# Ruby int32_to_ip: a.pack(?N).unpack('C*') * ? ;

require "minitest/autorun"

# https://www.codewars.com/kata/int32-to-ipv4/ruby

# https://www.rubydoc.info/stdlib/core/Array:pack
# N         | Integer | 32-bit unsigned, network (big-endian) byte order

# https://apidock.com/ruby/String/unpack
# C             | Integer | 8-bit unsigned (unsigned char)
#  An asterisk (“*”) will use up all remaining elements

# https://docs.ruby-lang.org/en/2.0.0/Array.html#method-i-2A
# ary * int -> new_ary
# ary * str -> new_string

# https://ruby-doc.org/core-2.4.0/doc/syntax/literals_rdoc.html
# There is also a character literal notation to represent single character strings, 
# which syntax is a question mark (?) 

def int32_to_ip(*a)
    a.pack(?N).unpack('C*') * ?.
end

def int32_to_ip2(*arr)
    arr.pack('NN').unpack('C*') * ?.
end
def int32_to_ip2_1(*arr)
    arr.pack('N*').unpack('C*') * ?.
end

describe "inte23_to_id" do
    it "should correctly convert" do
        assert_equal "128.32.10.1", int32_to_ip(2149583361) 
        assert_equal "0.0.0.32", int32_to_ip(32) 
        assert_equal "0.0.0.0", int32_to_ip(0)
        assert_equal "128.32.10.1.128.32.10.1", int32_to_ip2(2149583361, 2149583361)    
        assert_equal "128.32.10.1.128.32.10.1", int32_to_ip2_1(2149583361, 2149583361) 
    end
end
