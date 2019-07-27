def one(solution, args)
    argumentVariants = args.join('|')
    pattern = /([^\w$])(#{argumentVariants})(\W)/
    repl = '\1$\2\3'
    p solution.scan(pattern)
    return solution.gsub(pattern, repl)
end

def two(solution, args)
    argumentVariants = args.join('|')
    pattern = /(#{argumentVariants})(?=[^\w$])(\W)/
    repl = '$\1\2'
    p solution.scan(pattern)
    return solution.gsub(pattern, repl)
end

require 'colorize'
puts "%s" % one("function returnSecond(fu_,_re5,NOO) {\t  return _re5;\t}",["fu_", "_re5", "NOO"]).red
puts "%s" % two("function returnSecond(fu_,_re5,NOO) {\t  return _re5;\t}",["fu_", "_re5", "NOO"]).green