# Bash || and &&
echo "HI! 20180514."

false ; echo "It will run after false ;"
true ; echo "It will run after true ;"
echo "====="

false || echo "It will run because false ||"
true || echo "Will it Run?"
echo "---- (true || echo 'Bum') - 'Bum' will not be fired."
echo "====="

false && echo "It will not be fired"
echo '---- (false && echo "It will not fe fired") will not print'
true && echo "This will be fired (true && echo 'this') "
echo "====="
