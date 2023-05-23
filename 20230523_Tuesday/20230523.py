# Leetcode: 703. Kth Largest Element in a Stream.
# https://leetcode.com/problems/kth-largest-element-in-a-stream/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 105 ms, faster than 46.05% of Python3 online submissions for Kth
# Largest Element in a Stream.
# Memory Usage: 20.6 MB, less than 9.48% of Python3 online submissions for Kth
# Largest Element in a Stream. 
# 2023.05.23 Daily Challenge.
class KthLargest:
    # Copied from the: 
    # https://leetcode.com/problems/kth-largest-element-in-a-stream/solution/
    def __init__(self, k: int, nums: List[int]):
        self.k = k
        self.heap = nums
        heapq.heapify(self.heap)
        
        while len(self.heap) > k:
            heapq.heappop(self.heap)

    def add(self, val: int) -> int:
        heapq.heappush(self.heap, val)
        if len(self.heap) > self.k:
            heapq.heappop(self.heap)
        return self.heap[0]
