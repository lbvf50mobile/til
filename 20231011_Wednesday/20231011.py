# Leetcode: 2251. Number of Flowers in Full Bloom.
# https://leetcode.com/problems/number-of-flowers-in-full-bloom/
# = = = = = = = = = = = = = =
# Accepted.
# Thank God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 915 ms, faster than 64.85% of Python3 online submissions for Number
# of Flowers in Full Bloom.
# Memory Usage: 44.9 MB, less than 34.24% of Python3 online submissions for
# Number of Flowers in Full Bloom.
# 2023.10.11 Daily Challenge.
# https://leetcode.com/problems/number-of-flowers-in-full-bloom/solution/
class Solution:
    def fullBloomFlowers(self, flowers: List[List[int]], people: List[int]) -> List[int]:
        # Copied from:
        # https://leetcode.com/problems/number-of-flowers-in-full-bloom/solution/

        flowers.sort()
        sorted_people = sorted(people)
        dic = {}
        heap = []
        
        i = 0
        for person in sorted_people:
            while i < len(flowers) and flowers[i][0] <= person:
                heapq.heappush(heap, flowers[i][1])
                i += 1
            
            while heap and heap[0] < person:
                heapq.heappop(heap)
            
            dic[person] = len(heap)

        return [dic[x] for x in people]
