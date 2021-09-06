# Leetcode: 1629. Slowest Key.
# https://leetcode.com/problems/slowest-key/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# https://leetcode.com/explore/challenge/card/september-leetcoding-challenge-2021/636/week-1-september-1st-september-7th/3965/
# @param {Integer[]} release_times
# @param {String} keys_pressed
# @return {Character}
def slowest_key(release_times, keys_pressed)
  n = release_times.size
  durations = Array.new(n)
  durations[0] = release_times[0]
  (1...n).each do |i|
    durations[i] = release_times[i] - release_times[i-1]
  end
  max = durations.max
  keys_pressed.chars.zip(durations).select{|(a,b)| max == b}.sort_by{|a,b| a}.last.first
end
