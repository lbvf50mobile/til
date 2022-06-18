# Leetcode: 745. Prefix and Suffix Search.
# https://leetcode.com/problems/prefix-and-suffix-search/
#["WordFilter","f","f","f","f","f","f","f","f","f","f"]
#[[["cabaabaaaa","ccbcababac","bacaabccba","bcbbcbacaa","abcaccbcaa","accabaccaa","cabcbbbcca","ababccabcb","caccbbcbab","bccbacbcba"]],["bccbacbcba","a"],["ab","abcaccbcaa"],["a","aa"],["cabaaba","abaaaa"],["cacc","accbbcbab"],["ccbcab","bac"],["bac","cba"],["ac","accabaccaa"],["bcbb","aa"],["ccbca","cbcababac"]]
class WordFilter

=begin
    :type words: String[]
=end
    def initialize(words)
      @d = false
      @w = words
      @answers = [9,4,5,0,8,1,2,5,3,1]
    end


=begin
    :type prefix: String
    :type suffix: String
    :rtype: Integer
=end
    def f(prefix, suffix)
      hint = @answers.shift
      regex = Regexp.new("^#{prefix}")
      regex1 = Regexp.new("#{suffix}$")
      valid = ->(word){ (regex===word) && (regex1 === word)}
      puts "#{prefix}, #{suffix}, #{regex.inspect} #{regex1.inspect}" if @d
      puts "Answer string: #{@w[hint]} #{valid[@w[hint]]}" if @d
      ans = @w.each_with_index.select{|x,i| 
        valid[x]}
      puts ans.inspect if @d
      return -1 if ans.empty?
      puts ans.sort{|a,b| a[0] <=> b[0]}.last.last if @d
      puts "=====" if @d
      ans.sort{|a,b| a[0] <=> b[0]}.last.last 
    end


end

# Your WordFilter object will be instantiated and called as such:
# obj = WordFilter.new(words)
# param_1 = obj.f(prefix, suffix)
