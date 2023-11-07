# https://leetcode.com/problems/eliminate-maximum-number-of-monsters/solution/
class Solution:
    def eliminateMaximum(self, dist: List[int], speed: List[int]) -> int:
        arrival = []
        for i in range(len(dist)):
            arrival.append(dist[i] / speed[i])
        
        arrival.sort()
        ans = 0

        for i in range(len(arrival)):
            if arrival[i] <= i:
                break
                
            ans += 1

        return ans
