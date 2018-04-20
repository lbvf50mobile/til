# Similarities in backquotes and %x.

# https://stackoverflow.com/questions/2232/calling-shell-commands-from-ruby/2400#2400
# https://gist.github.com/JosephPecoraro/4069

test = 2
p $?
p `echo 'hi #{test}'`
p $?
p %x{echo 'hi {} #{test}'}
p $?
p `pwd`
p `whoami`
p `env`
