# Bash test -f -d -e; 

# https://stackoverflow.com/a/21164441

mkdir 20180528_Monday/d
echo file > 20180528_Monday/f
cat 20180528_Monday/f

[ -f 20180528_Monday/d ] && echo "-f select dir" || echo "-f dose not select dir "
[ -f 20180528_Monday/f ] && echo "-f select file" || echo "-f dose not delect file "
[ -d 20180528_Monday/d ] && echo "-d select dir" || echo "-d dose not select dir "
[ -d 20180528_Monday/f ] && echo "-d select file" || echo "-d dose not delect file "
[ -e 20180528_Monday/d ] && echo "-e select dir" || echo "-e dose not select dir "
[ -e 20180528_Monday/f ] && echo "-e select file" || echo "-e dose not delect file "

