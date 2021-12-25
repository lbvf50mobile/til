# Leetcode: 227. Basic Calculator II.
# https://leetcode.com/problems/basic-calculator-ii/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 196 ms, faster than 50.00% of Ruby online submissions for Basic Calculator II.
# Memory Usage: 226.9 MB, less than 8.33% of Ruby online submissions for Basic Calculator II.
# @param {String} s
# @return {Integer}
def calculate(s)
  @stack = [0]
  s.chars.each do |char|
    next if " " == char
    if char.ord.between?(?0.ord,?9.ord)
      if @stack.last.class == Integer
        x = @stack.pop
        @stack.push(x*10 + char.to_i)
      else
        @stack.push(char.to_i)
      end
      next
    end
    if ?+ == char || ?- == char
      prev_multiply_and_add
      @stack.push(char)
      next
    end
    if ?* == char || ?/ == char
      prev_multiply
      @stack.push(char)
      next
    end
    raise "Unknown action for #{char}."
  end
  prev_multiply_and_add
  @stack[0]
end

def prev_multiply
  size = @stack.size
  return if size < 3
  if ?* == @stack[size-2]
    a = @stack.pop
    @stack.pop
    b = @stack.pop
    @stack.push(a*b)
    return
  end
  if ?/ == @stack[size-2]
    b = @stack.pop
    @stack.pop
    a = @stack.pop
    @stack.push(a/b)
  end
end

def prev_multiply_and_add
  prev_multiply
  size = @stack.size
  return if size < 3
  if ?+ == @stack[size-2]
    a = @stack.pop
    @stack.pop
    b = @stack.pop
    @stack.push(a+b)
    return
  end
  if ?- == @stack[size-2]
    b = @stack.pop
    @stack.pop
    a = @stack.pop
    @stack.push(a-b)
  end
end

