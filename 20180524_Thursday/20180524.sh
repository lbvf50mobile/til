# tr
# https://www.thegeekstuff.com/2012/12/linux-tr-command/

echo "Zi" | tr "Z" "H"
echo "Hi" | tr [:lower:] [:upper:]
echo "xxxxxxxxxxxHixxxx" | tr -d "x"
echo "{HI}" | tr '{}'  '()'
echo "Hi,   the  bash is cool." | tr -s [:space:] ' '