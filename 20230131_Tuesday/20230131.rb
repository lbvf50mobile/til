# Leetcode: 1626. Best Team With No Conflicts.
# https://leetcode.com/problems/best-team-with-no-conflicts/
# @param {Integer[]} scores
# @param {Integer[]} ages
# @return {Integer}
def best_team_score(scores, ages)
  # Hints from:
  # https://leetcode.com/problems/best-team-with-no-conflicts/solution/
  # - - - - - - -
  # Last element of the same adge must have maximum score.
  # Because if that would not happen it could happens
  # That highest score, small score, and older with middle score.
  # In this case middle score do not see user with a highest score.
  @data = ages.zip(scores).sort{|a,b| a[0] == b[0] ? a[1] <=> b[1] : a[0] <=> b[0]}
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
