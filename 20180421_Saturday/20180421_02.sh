# Set SHELL variable [Ruby dose not show shell variables]
V123='This is a test var'
echo $V123
echo $$
echo $PID

# Read shell variable via Ruby
ruby -e 'p `echo $V123`'
ruby -e 'p %x[echo $V123]'

ruby -e 'p `echo $$`'
ruby -e 'p %x[echo $$]'

ruby -e 'p `echo $PID`'
ruby -e 'p %x[echo $PID]'