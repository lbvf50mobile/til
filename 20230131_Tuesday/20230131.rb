# Leetcode: 1626. Best Team With No Conflicts.
# https://leetcode.com/problems/best-team-with-no-conflicts/
# @param {Integer[]} scores
# @param {Integer[]} ages
# @return {Integer}
# Fail.
# [1,3,7,3,2,4,10,7,5]
# [4,5,2,1,1,2,4,1,4]
def best_team_score(scores, ages)
  @data = ages.zip(scores).sort_by{|x| x[0]}
  @dp = {}
  @max = 0
  dfs(-1,0)
  return @max
end

def dfs(prev,curr)
  if curr >= @data.size
    return 0
  end
  if @dp[prev] && @dp[prev][curr]
    return @dp[prev][curr]
  end
  answer = 0
  if -1 == prev
    take_it = @data[curr][1] + dfs(curr, curr+1)
    not_take = dfs(prev, curr+1)
    answer = [take_it,not_take].max
  elsif @data[prev][0] < @data[curr][0] && @data[prev][1] > @data[curr][1] 
    not_take = dfs(prev, curr+1)
    answer = not_take
  else
    take_it = @data[curr][1] + dfs(curr, curr+1)
    not_take = dfs(prev, curr+1)
    answer = [take_it,not_take].max
  end
  @dp[prev] ||= {}
  @dp[prev][curr] = answer
  @max = answer if @max < answer
  return answer
end
