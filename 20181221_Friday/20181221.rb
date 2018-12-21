# Ruby Class.new {block}, fill array, recursion, String#.next! return same object;
p "alias x='ruby 20181221_Friday/20181221.rb'" 

# @vladz
export_class = Class.new do
    def export
      puts 'hello world'
    end
  end.new
  export_class.export
  instance = export_class
  instance.export

# @IlyaOsotov
  p (1..8).map{|x| rand(9) + 1}.join
  p Array.new(8){ rand(9)+1 }.join
  p Array.new(8){ (1..9).to_a.sample}.join

# @jeyjesus
  def fun n
    return 2 if n == 1
    return 4 if n == 2
    ans = 3 * fun(n-1) * 2 *n
    puts "n = #{n} f(n) = #{ans} "
    return ans
  end

  p 'answer'
  p fun 7

def fun2 n
  k = 0
  s = 0
  while n != 0 do
    k = k + 1
    if( 0 == n%2) 
        s = s + n%10
    end
    n = (n / 10.0).to_i
  end
    [k,s]
end

p fun2(300)

# @callhose
arr = []
int = '0'
puts "The: int"
p int.object_id
2.times{|_|
    puts "The int.next!"
    p int.next!.object_id 
    arr << int.next!
}
p int.object_id == int.next!.object_id # true
p int.object_id != int.next.object_id # true

# @RomanPa
s = "12"
a = []
a << s
p a
s.reverse!
p a 
s = "12"
a = []
a.push s
p a
s.reverse!
p a 
s = "12"
a = []
a.push s.clone
p a
s.reverse!
p a 