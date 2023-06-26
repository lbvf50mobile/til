# Leetcode: 2462. Total Cost to Hire K Workers.
# https://leetcode.com/problems/total-cost-to-hire-k-workers/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 763 ms, faster than 95.01% of Python3 online submissions for Total
# Cost to Hire K Workers.
# Memory Usage: 27.1 MB, less than 49.74% of Python3 online submissions for
# Total Cost to Hire K Workers.
# 2023.06.26 Daily Challenge.
class Solution:
    def totalCost(self, costs: List[int], k: int, candidates: int) -> int:
        # Copied from:
        # https://leetcode.com/problems/total-cost-to-hire-k-workers/solution/

        # head_workers stores the first k workers.
        # tail_workers stores at most last k workers without any workers from the first k workers. 
        head_workers = costs[:candidates]
        tail_workers = costs[max(candidates, len(costs) - candidates):]
        heapify(head_workers)
        heapify(tail_workers)
        
        answer = 0
        next_head, next_tail = candidates, len(costs) - 1 - candidates 

        for _ in range(k): 
            if not tail_workers or head_workers and head_workers[0] <= tail_workers[0]: 
                answer += heappop(head_workers)

                # Only refill the queue if there are workers outside the two queues.
                if next_head <= next_tail: 
                    heappush(head_workers, costs[next_head])
                    next_head += 1
            else: 
                answer += heappop(tail_workers)

                # Only refill the queue if there are workers outside the two queues.
                if next_head <= next_tail:  
                    heappush(tail_workers, costs[next_tail])
                    next_tail -= 1
                    
        return answer
