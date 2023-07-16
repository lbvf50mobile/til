# Leetcode: 1125. Smallest Sufficient Team.
# https://leetcode.com/problems/smallest-sufficient-team/
# @param {String[]} req_skills
# @param {String[][]} people
# @return {Integer[]}
def smallest_sufficient_team(req_skills, people)
  # Based on:
  # https://leetcode.com/problems/smallest-sufficient-team/solution/
  n = people.size
  m = req_skills.size
  skill_id = {}
  req_skills.each_with_index do |v,i|
    skill_id[v] = i
  end
  row = (2**16 - 1)
  smop = Array.new(n,0)
  people.each_with_index do |v,i|
    v.each do |skill|
      smop[i] |= 1 << skill_id[skill]
    end
  end
  dp = Array.new(1<<m, (1<<n) - 1)
  dp[0] = 0
  (1...(1<<m)).each do |sm|
    n.times do |i|
      ssm = sm & (row^smop[i])
      if ssm != sm
        pm = dp[ssm] | (1 << i)
        if pm.to_s(2).count(?1) < dp[sm].to_s(2).count(?1)
          dp[sm] = pm
        end
      end
    end
  end
  answer_mask = dp[(1<<m) - 1]
  ans = []
  n.times do |i|
    ans.push(i) if (answer_mask >> i) & 1
  end
  ans
end
