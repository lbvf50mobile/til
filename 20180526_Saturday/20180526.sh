# 'WX' required for create/delete files in folder, "W" without "X" dose not works.

# Fire with `source 20180526_Saturday/20180526.sh`

alias fa='chmod u-xwr r--'
alias fg='alias | grep f[a-z]='
alias ft='touch r--/file_tmp; rm r--/file_tmp'
alias fw='chmod u+w r--'
alias fx='chmod u+x r--'
alias ll="ls -alF | grep 'r--/'"

mkdir r--

# d---
echo "1) d---"
fa; ft; ll # Permission Denied

# d-w-
echo "2) d-w-"
fa; fw; ft; ll # Permission Denied

# d--x
echo "3) d--x"
fa; fx; ft; ll # Permission Denied

# d-wx
echo "4) d-wx"
fa; fw; fx; ft; ll # WORKS