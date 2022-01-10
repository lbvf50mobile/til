# Leetcode: 67. Add Binary.
# https://leetcode.com/problems/add-binary/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 153 ms, faster than 5.56% of Ruby online submissions for Add Binary.
# Memory Usage: 210.1 MB, less than 14.44% of Ruby online submissions for Add Binary.
# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
  @d = false
  puts "#{a} + #{b}" if @d
  i,j = a.size - 1, b.size - 1
  reminder = 0
  answer = []
  while (i >= 0) || (j >= 0)
    addent_i = i >= 0 ? a[i].to_i : 0
    addent_j = j >= 0 ? b[j].to_i : 0
    total = reminder + addent_i + addent_j
    puts "a[#{i}]=#{addent_i} b[#{j}]=#{addent_j} r=#{reminder} t=#{total}" if @d
    case total
    when 0
      reminder = 0
      answer.unshift(?0)
    when 1
      reminder = 0
      answer.unshift(?1)
    when 2
      reminder = 1
      answer.unshift(?0)
    when 3
      reminder = 1
      answer.unshift(?1)
    else
      raise "Unpredicted sum #{total}."
    end
    puts "r=#{reminder} a=#{answer}" if @d
    puts "= = = = = " if @d
    i -= 1
    j -= 1
  end
  answer.unshift(?1) if 1 == reminder
  puts "r=#{reminder} a=#{answer}" if @d
  answer.join
end

