# Leetcode: 2471. Minimum Number of Operations to Sort a Binary Tree by Level
# https://leetcode.com/problems/minimum-number-of-operations-to-sort-a-binary-tree-by-level/editorial/?envType=daily-question&envId=2024-12-23

class Solution:
    def minimumOperations(self, root: Optional["TreeNode"]) -> int:
        queue = deque([root])
        total_swaps = 0

        # Process tree level by level using BFS
        while queue:
            level_size = len(queue)
            level_values = []

            # Store level values and add children to queue
            for _ in range(level_size):
                node = queue.popleft()
                level_values.append(node.val)

                if node.left:
                    queue.append(node.left)
                if node.right:
                    queue.append(node.right)

            # Add minimum swaps needed for current level
            total_swaps += self._get_min_swaps(level_values)

        return total_swaps

    # Calculate minimum swaps needed to sort an array
    def _get_min_swaps(self, original: list) -> int:
        swaps = 0
        target = sorted(original)

        # Map to track current positions of values
        pos = {val: idx for idx, val in enumerate(original)}

        # For each position, swap until correct value is placed
        for i in range(len(original)):
            if original[i] != target[i]:
                swaps += 1

                # Update position of swapped values
                cur_pos = pos[target[i]]
                pos[original[i]] = cur_pos
                original[cur_pos] = original[i]

        return swaps
