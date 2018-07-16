# check the LinuxMint sum.
# https://stackoverflow.com/a/25168672
# https://stackoverflow.com/questions/1734307/find-value-in-array

require 'benchmark'
require 'colorize'

time = Benchmark.measure {
    lines = %x{cat ~/Downloads/1/sha256sum.txt}.split
    sum = %x{sha256sum -b ~/Downloads/1/linuxmint-19-xfce-64bit.iso}.split
    p lines.include?(sum[0])
}

puts  ("Time spend: %.2f" % time.real).magenta