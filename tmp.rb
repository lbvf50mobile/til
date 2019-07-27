def programTranslation(solution, args)
    argumentVariants = args.join('|')
    p argumentVariants
    pattern = /([^\w$])(#{argumentVariants})(\W)/
    p pattern
    repl = '\1$\2\3'
    p solution.scan(pattern)
    return solution.gsub(pattern, repl)
end


p programTranslation("function add($n, m) {\t  return n + $m;\t}",[?n,?m]);