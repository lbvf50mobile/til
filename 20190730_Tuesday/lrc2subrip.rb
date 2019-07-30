class Task
def length2secs len; arr = len.split(?:).map(&:to_i); arr[0]*60*60 + arr[1] * 60 + arr[2] end
def lrc2secs str; arr = str.scan(/^\[(\d+):(\d+)\.(\d+)\]/)[0]; {sec: arr[0].to_i*60 + arr[1].to_i, xx: arr[2].to_i} end
def lrc2subRip(lrcLyrics, songLength)
    p stop = length2secs(songLength)
    p lrcLyrics.map{|x| p x; lrc2secs(x)}
    ["1", 
        "00:00:12,000 --> 00:00:17,200", 
        "Happy birthday dear coder,", 
        "", 
        "2", 
        "00:00:17,200 --> 00:00:20,000", 
        "Happy birthday to you!"]
end
end
