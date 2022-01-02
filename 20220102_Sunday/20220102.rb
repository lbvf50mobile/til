# Leetcode: 1010. Pairs of Songs With Total Durations Divisible by 60.
# https://leetcode.com/problems/pairs-of-songs-with-total-durations-divisible-by-60/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 111 ms, faster than 25.00% of Ruby online submissions for Pairs of Songs With Total Durations Divisible by 60.
# Memory Usage: 211.8 MB, less than 50.00% of Ruby online submissions for Pairs of Songs With Total Durations Divisible by 60.
# @param {Integer[]} time
# @return {Integer}
def num_pairs_divisible_by60(time)
  pairs_counter = 0
  reminders = Array.new(60,0)
  time.each do |el|
    reminder = el % 60
    if 0 == reminder
      pairs_counter += reminders[0]
    else
      pairs_counter += reminders[60-reminder]
    end
    reminders[reminder] += 1
  end
  pairs_counter
end
