# Bash read STDIN.

# https://stackoverflow.com/questions/6980090/how-to-read-from-a-file-or-stdin-in-bash
# http://wiki.bash-hackers.org/syntax/pe#case_modification

echo "alias x='bash 20180617_Sunday/20180617.sh'" 


bash 20180617_Sunday/20180617_1.sh "This is first"
echo "And this is a pipe" | bash 20180617_Sunday/20180617_1.sh 