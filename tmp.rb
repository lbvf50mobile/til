require 'colorize'
# https://gist.github.com/lbvf50mobile/1b99ed56192b6cf0acbec76f8344478d
# https://www.codewars.com/kata/59d0ee709f0cbcf65400003b
a = File.read('1')
b =  File.read('2')
flag = true
norm = ""
f = ['','']
p 0..[a.size,b.size].min


(0..[a.size,b.size].min).each{ |x|
    flag = false if a[x] != b[x]
    if flag
        norm << a[x]
    else
        f[0] << a[x] if a[x]
        f[1] << b[x] if b[x]
    end
}
puts norm.green
puts f[0].red
puts f[1].yellow