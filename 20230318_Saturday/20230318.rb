# Leetcode: 1472. Design Browser History.
# https://leetcode.com/problems/design-browser-history/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 221 ms, faster than 60.00% of Ruby online submissions for Design Browser History.
# Memory Usage: 214.5 MB, less than 100.00% of Ruby online submissions for Design Browser History.
# 2023.03.18 Daily Challenge.
class BrowserHistory

=begin
    :type homepage: String
=end
    def initialize(homepage)
      @a = [homepage]
      @i = 0
    end


=begin
    :type url: String
    :rtype: Void
=end
    def visit(url)
      @a = @a[0..@i] + [url]
      @i += 1
      @a[@i]
    end


=begin
    :type steps: Integer
    :rtype: String
=end
    def back(steps)
      @i -= steps
      @i = 0 if @i < 0
      return @a[@i]
    end


=begin
    :type steps: Integer
    :rtype: String
=end
    def forward(steps)
      @i += steps
      @i = @a.size - 1 if @i >= @a.size
      return @a[@i]
    end


end

# Your BrowserHistory object will be instantiated and called as such:
# obj = BrowserHistory.new(homepage)
# obj.visit(url)
# param_2 = obj.back(steps)
# param_3 = obj.forward(steps)
