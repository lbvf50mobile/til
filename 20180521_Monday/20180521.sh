# Bash 1 is false, 0 is true !
function z1(){
    return 1
}

function z0(){
    return 0
}

function z5(){
    return 5
}

function zstring(){
    return "string"
}

zstring && echo "zstring returns string it's a true" || echo "zstring returns string it's a false"
z5 && echo "z5 returns 5 it's a true" || echo "z5 returns 5 it's a false"
z1 && echo "z1 returns 1 it's a true" || echo "z1 returns 1 it's a false"
z0 && echo "z0 returns 0 it's a true" || echo "z0 returns 0 it's a false"