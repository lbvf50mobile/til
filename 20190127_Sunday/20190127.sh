echo "alias x='bash 20190127_Sunday/20190127.sh'" 

# export PATH="$HOME/.rbenv/bin:$PATH"

# @fenek67

ATH=/home/fenek/.rbenv/shims:/home/fenek/.rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/usr/share/rvm/bin
echo $ATH
echo "Now delete suffix"
export ATH=${ATH%:/usr/share/rvm/bin}
echo $ATH
