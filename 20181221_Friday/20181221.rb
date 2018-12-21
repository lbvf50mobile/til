
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
