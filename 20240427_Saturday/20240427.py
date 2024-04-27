# Leetcode: 514. Freedom Trail.
# https://leetcode.com/problems/freedom-trail/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 254 ms, faster than 24.70% of Python3 online submissions for
# Freedom Trail.
# Memory Usage: 17.4 MB, less than 33.33% of Python3 online submissions for
# Freedom Trail.
# 2024.04.27 Daily Challenge.
# Leetcode's solutoin copy/past.
class Solution:
    def findRotateSteps(self, ring: str, key: str) -> int:
        ring_len = len(ring)
        key_len = len(key)
        best_steps = {}

        # Find the minimum steps between two indexes of ring
        def count_steps(curr, next):
            steps_between = abs(curr - next)
            steps_around = ring_len - steps_between
            return min(steps_between, steps_around)

        def try_lock(ring_index, key_index):
            # If we have already calculated this sub-problem, return result
            if (ring_index, key_index) in best_steps:
                return best_steps[(ring_index, key_index)]

            # If we reach the end of the keyword, it has been spelled
            if key_index == key_len:
                best_steps[(ring_index, key_index)] = 0
                return 0

            # For each occurrence of the character k[key_index] in ring
            # calculate the minimum steps from the ring_index of ring
            min_steps = inf
            for char_index in range(ring_len):
                if ring[char_index] == key[key_index]:
                    min_steps = min(min_steps, 
                                    count_steps(ring_index, char_index)
                                    + 1
                                    + try_lock(char_index, key_index + 1))

            best_steps[(ring_index, key_index)] = min_steps
            return min_steps

        return try_lock(0, 0)
