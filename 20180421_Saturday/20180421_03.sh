# $$ and $BASHPID variables

echo $$ $BASHPID # 7272 7272
(echo $$ $BASHPID) # 7272 6568

# https://unix.stackexchange.com/a/62232
    # BASHPID
    #      Expands to the process id of the  current  bash  process.   This
    #     differs  from  $$ under certain circumstances, such as subshells
    #    that do not require bash to be re-initialized.