class Task
def length2secs len; arr = len.split(?:).map(&:to_i); arr[0]*60*60 + arr[1] * 60 + arr[2] end
def lrc2hash str; arr = str.scan(/^\[(\d+):(\d+)\.(\d+)\]( (.*)){0,1}$/)[0]; {sec: arr[0].to_i*60 + arr[1].to_i, xx: arr[2].to_i, text: arr[4] ? arr[4]: ""} end
def sec2hh_mm_ss sec; [sec/(60*60), (sec-(sec/(60*60))*60*60)/60, sec%60] end
def subrip_time sec_xx_hash
    arr =  sec2hh_mm_ss(sec_xx_hash[:sec])
    "%02d:%02d:%02d,%02d0" % [*arr,sec_xx_hash[:xx]]
end

def lrc2subRip(lrcLyrics, songLength)
    stop = length2secs(songLength)
    array = lrcLyrics.map.with_index(1){|x,i| {index: i.to_s,  **lrc2hash(x)}}
    answer = []
    array.each_with_index do |value, index|
        start_time = subrip_time(sec: value[:sec], xx: value[:xx])
        end_time = array[index+1] ? subrip_time(sec: array[index+1][:sec], xx: array[index+1][:xx]) : subrip_time(sec: stop, xx: 0)
        answer.push value[:index]
        answer.push "#{start_time} --> #{end_time}"
        answer.push value[:text]
        answer.push ""
    end
    answer.pop
    answer
end
end
