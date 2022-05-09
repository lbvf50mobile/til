# Leetcode: 17. Letter Combinations of a Phone Number.
# https://leetcode.com/problems/letter-combinations-of-a-phone-number/
# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  @h = {}
  @n = [
    [],
    [],
    [?a,?b,?c],
    [?d,?e,?f],
    [?g,?h,?i],
    [?j,?k,?l],
    [?m,?n,?o],
    [?p,?q,?r,?s],
    [?t,?u,?v],
    [?w,?x,?y,?z]
  ];
  rec(digits)
end

def rec(digits)
  return [""] if digits.empty?
  return @h[digits] if @h[digits]
  x = digits[0].to_i
  rest = digits[1..-1]
  arr = rec(rest)
  ans = []
  @n[x]
  @n[x].each do |ch|
    ans += arr.map{|x| ch+s}
  end
  @h[digits] = ans
  ans
end
