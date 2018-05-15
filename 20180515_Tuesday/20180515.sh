# Shell test.

echo "[] is alias for test:"
[ 1 -gt 2 ] && echo "1 -gt 2. It's true" || echo "1 -gt 2. This is false." 
[ 1 -lt 2 ] && echo "1 -lt 2 True" || echo "1 -lt 2 false"

echo "Test itself:"
test 1 -gt 2 && echo "1 -gt 2. It's true" || echo "1 -gt 2. This is false." 
test 1 -lt 2 && echo "1 -lt 2 True" || echo "1 -lt 2 false"
