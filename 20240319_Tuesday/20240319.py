# Leetcode: 621. Task Scheduler.
# https://leetcode.com/problems/task-scheduler/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 406 ms, faster than 71.26% of Python3 online submissions for Task
# Scheduler.
# Memory Usage: 17.2 MB, less than 59.31% of Python3 online submissions for
# Task Scheduler.
# 2024.03.19 Daily Challenge.

class Solution:
    # Copied from:
    # https://leetcode.com/problems/task-scheduler/solution/
    def leastInterval(self, tasks: List[str], n: int) -> int:
        # freq array to store the frequency of each task
        freq = [0] * 26  
        max_count = 0

        # Count the frequency of each task and find the maximum frequency
        for task in tasks:
            freq[ord(task) - ord('A')] += 1
            max_count = max(max_count, freq[ord(task) - ord('A')])

        # Calculate the total time needed for execution
        time = (max_count - 1) * (n + 1)
        for f in freq:
            if f == max_count:
                time += 1

        # Return the maximum of total time needed and the length of the task list
        return max(len(tasks), time)
