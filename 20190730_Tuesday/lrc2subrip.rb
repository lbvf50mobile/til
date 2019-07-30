class Task
def length2secs len; arr = len.split(?:).map(&:to_i); arr[0]*60*60 + arr[1] * 60 + arr[2] end
def lrc2hash str; arr = str.scan(/^\[(\d+):(\d+)\.(\d+)\] (.*)$/)[0]; {sec: arr[0].to_i*60 + arr[1].to_i, xx: arr[2].to_i, text: arr[3]} end
def sec2hh_mm_ss sec; [sec/(60*60), (sec-sec/(60*60))/60, sec%60] end
def subrip_time sec_xx_hash
    arr =  sec2hh_mm_ss(sec_xx_hash[:sec])
    "%02d:%02d:%02d,%02d0" % [*arr,sec_xx_hash[:xx]]
end

def lrc2subRip(lrcLyrics, songLength)
    p stop = length2secs(songLength)
    p array = lrcLyrics.map.with_index(1){|x,i| {index: i,  **lrc2hash(x)}}
    answer = []
    array.each_with_index do |value, index|
        p start_time = subrip_time(sec: value[:sec], xx: value[:xx])
    end
    ["1", 
        "00:00:12,000 --> 00:00:17,200", 
        "Happy birthday dear coder,", 
        "", 
        "2", 
        "00:00:17,200 --> 00:00:20,000", 
        "Happy birthday to you!"]
end
end
