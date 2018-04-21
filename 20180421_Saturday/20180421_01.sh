# Shell and Environment variables.
V123='This is an variable. VAR HERE.'
echo $V123

# Read shell variable via Ruby
ruby -e 'p `echo $V123`'
ruby -e 'p %x[echo $V123]'

# Check SET for this var
set | grep V123
ruby -e 'p `set | grep V123`' # Interesting that `set` dose not works
ruby -e 'p %x[set | grep V123]' # Interesting that `set` dose not works

# Put this var itno the Environment
echo "--- Export"
printenv V123
export V123
printenv V123
echo "--- Ruby printenv"
ruby -e 'p `printenv V123`' # Interesting that `set` dose not works
ruby -e 'p %x[printenv V123]' # Interesting that `set` dose not works