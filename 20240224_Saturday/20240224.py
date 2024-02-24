# Leetcode: 2092. Find All People With Secret.
# https://leetcode.com/problems/find-all-people-with-secret/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 1586 ms, faster than 74.83% of Python3 online submissions for Find
# All People With Secret.
# Memory Usage: 70.2 MB, less than 15.89% of Python3 online submissions for Find
# All People With Secret.
# 2024.02.24 Daily Challenge.

# copied from.
# https://leetcode.com/problems/find-all-people-with-secret/solution/

class Solution:
    def findAllPeople(self, n: int, meetings: List[List[int]], firstPerson: int) -> List[int]:
        # For every person, store the time and label of the person met.
        graph = defaultdict(list)
        for x, y, t in meetings:
            graph[x].append((t, y))
            graph[y].append((t, x))

        # Earliest time at which a person learned the secret
        # as per current state of knowledge. If due to some new information,
        # the earliest time of knowing the secret changes, we will update it
        # and again process all the people whom he/she meets after the time
        # at which he/she learned the secret.
        earliest = [inf] * n
        earliest[0] = 0
        earliest[firstPerson] = 0

        # Do DFS
        def dfs(person, time):
            for t, next_person in graph[person]:
                if t >= time and earliest[next_person] > t:
                    earliest[next_person] = t
                    dfs(next_person, t)
        
        dfs(0, 0)
        dfs(firstPerson, 0)
        
        # Since we visited only those people who know the secret
        # we need to return indices of all visited people.
        return [i for i in range(n) if earliest[i] != inf]
