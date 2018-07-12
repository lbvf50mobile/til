
echo "the content" > cpfile1
scp -i ~/.ssh/keyfile cpfile1 username@host:cpfile2
scp -i ~/.ssh/keyfile username@host:cpfile2 cpfile3
cat cpfile3