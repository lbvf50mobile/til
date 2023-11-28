# Approach 1: Top-Down Dynamic Programming.
# https://leetcode.com/problems/number-of-ways-to-divide-a-long-corridor/solution/
class Solution:
    def numberOfWays(self, corridor: str) -> int:
        # Store 1000000007 in a variable for convenience
        MOD = 1_000_000_007

        # Cache the result of each sub-problem
        cache = [[-1] * 3 for _ in range(len(corridor))]

        # Count the number of ways to divide from "index" to the last index
        # with "seats" number of "S" in the current section
        def count(index, seats):
            # If we have reached the end of the corridor, then
            # the current section is valid only if "seats" is 2
            if index == len(corridor):
                return 1 if seats == 2 else 0

            # If we have already computed the result of this sub-problem,
            # then return the cached result
            if cache[index][seats] != -1:
                return cache[index][seats]
            
            # If the current section has exactly 2 "S"
            if seats == 2:
                # If the current element is "S", then we have to close the
                # section and start a new section from this index. Next index
                # will have one "S" in the current section
                if corridor[index] == "S":
                    result = count(index + 1, 1)
                else:
                    # If the current element is "P", then we have two options
                    # 1. Close the section and start a new section from this index
                    # 2. Keep growing the section
                    result = (count(index + 1, 0) + count(index + 1, 2)) % MOD
            else:
                # Keep growing the section. Increment "seats" if present
                # element is "S"
                if corridor[index] == "S":
                    result = count(index + 1, seats + 1)
                else:
                    result = count(index + 1, seats)
            
            # Memoize the result, and return it
            cache[index][seats] = result
            return cache[index][seats]
        
        # Call the count function
        return count(0, 0)
