echo "amount of Params: ""$#"
echo "All Params: ""$@"
echo "Params from 0: ""${@:0:1}"
[ $0 == ${@:0:1} ] && Echo "\$0 == \${@:0:1} " || echo "NOT"