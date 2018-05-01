COOLVAR=77
set | grep VAR
ruby -e 'p `set | grep VAR`'
ruby -e 'p %x{set | grep VAR}'