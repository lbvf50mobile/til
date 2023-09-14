# Leetcode: 332. Reconstruct Itinerary.
# https://leetcode.com/problems/reconstruct-itinerary/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 81 ms, faster than 87.97% of Python3 online submissions for
# Reconstruct Itinerary.
# Memory Usage: 16.9 MB, less than 79.66% of Python3 online submissions for
# Reconstruct Itinerary
# 2023.09.14 Daily Challenge.
class Solution:
    # Copied from:
    # https://leetcode.com/problems/reconstruct-itinerary/discuss/4041944/95.76-DFS-Recursive-and-Iterative
    def findItinerary(self, tickets: List[List[str]]) -> List[str]:
        graph = defaultdict(list)
        
        for src, dst in sorted(tickets, reverse=True):
            graph[src].append(dst)
            
        itinerary = []
        def dfs(airport):
            while graph[airport]:
                dfs(graph[airport].pop())
            itinerary.append(airport)
        
        dfs("JFK")
        
        return itinerary[::-1]
