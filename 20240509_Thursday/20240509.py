# Leetcode: 3075. Maximize Happiness of Selected Children.
# https://leetcode.com/problems/maximize-happiness-of-selected-children/
# = = = = = = = = = = = = = =
# Accpeted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 812 ms, faster than 50.69% of Python3 online submissions for
# Maximize Happiness of Selected Children.
# Memory Usage: 42.8 MB, less than 84.50% of Python3 online submissions for
# Maximize Happiness of Selected Children.
# 2024.05.09 Daily Challenge.

class Solution:
    # Copied from:
    # https://leetcode.com/problems/maximize-happiness-of-selected-children/solution/
    def maximumHappinessSum(self, happiness: List[int], k: int) -> int:
        # Sort in descending order
        happiness.sort(reverse=True)

        total_happiness_sum = 0
        turns = 0

        # Calculate the maximum happiness sum
        for i in range(k):
            # Adjust happiness and ensure it's not negative
            total_happiness_sum += max(happiness[i] - turns, 0)

            # Increment turns for the next iteration
            turns += 1

        return total_happiness_sum
