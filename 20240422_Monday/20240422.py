# Leetcode: 752. Open the Lock.
# https://leetcode.com/problems/open-the-lock/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 292 ms, faster than 90.77% of Python3 online submissions for Open
# the Lock.
# Memory Usage: 18 MB, less than 50.54% of Python3 online submissions for Open
# the Lock.
# 2024.04.22 Daily Challenge.
# copied from:
# https://leetcode.com/problems/open-the-lock/solution/
class Solution:
    def openLock(self, deadends: List[str], target: str) -> int:
        # Map the next slot digit for each current slot digit.
        next_slot = {
            "0": "1",
            "1": "2",
            "2": "3",
            "3": "4",
            "4": "5",
            "5": "6",
            "6": "7",
            "7": "8",
            "8": "9",
            "9": "0",
        }
        # Map the previous slot digit for each current slot digit.
        prev_slot = {
            "0": "9",
            "1": "0",
            "2": "1",
            "3": "2",
            "4": "3",
            "5": "4",
            "6": "5",
            "7": "6",
            "8": "7",
            "9": "8",
        }

        # Set to store visited and dead-end combinations.
        visited_combinations = set(deadends)
        # Queue to store combinations generated after each turn.
        pending_combinations = deque()

        # Count the number of wheel turns made.
        turns = 0

        # If the starting combination is also a dead-end, 
        # then we can't move from the starting combination.
        if "0000" in visited_combinations:
            return -1

        # Start with the initial combination '0000'.
        pending_combinations.append("0000")
        visited_combinations.add("0000")

        while pending_combinations:
            # Explore all combinations of the current level.
            curr_level_nodes_count = len(pending_combinations)
            for _ in range(curr_level_nodes_count):
                # Get the current combination from the front of the queue.
                current_combination = pending_combinations.popleft()

                # If the current combination matches the target, 
                # return the number of turns/level.
                if current_combination == target:
                    return turns

                # Explore all possible new combinations 
                # by turning each wheel in both directions.
                for wheel in range(4):
                    # Generate the new combination 
                    # by turning the wheel to the next digit.
                    new_combination = list(current_combination)
                    new_combination[wheel] = next_slot[new_combination[wheel]]
                    new_combination_str = "".join(new_combination)
                    # If the new combination is not a dead-end and 
                    # was never visited, 
                    # add it to the queue and mark it as visited.
                    if new_combination_str not in visited_combinations:
                        pending_combinations.append(new_combination_str)
                        visited_combinations.add(new_combination_str)

                    # Generate the new combination 
                    # by turning the wheel to the previous digit.
                    new_combination = list(current_combination)
                    new_combination[wheel] = prev_slot[new_combination[wheel]]
                    new_combination_str = "".join(new_combination)
                    # If the new combination is not a dead-end and 
                    # is never visited, 
                    # add it to the queue and mark it as visited.
                    if new_combination_str not in visited_combinations:
                        pending_combinations.append(new_combination_str)
                        visited_combinations.add(new_combination_str)

            # We will visit next-level combinations.
            turns += 1

        # We never reached the target combination.
        return -1
