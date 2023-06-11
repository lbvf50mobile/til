# Leetcode: 1146. Snapshot Array.
# https://leetcode.com/problems/snapshot-array/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 661 ms, faster than 74.39% of Python3 online submissions for Snapshot
# Array.
# Memory Usage: 45.8 MB, less than 32.15% of Python3 online submissions for
# Snapshot Array.
# 2023.06.11 Daily Challenge.
class SnapshotArray:
    # Copied from:
    # https://leetcode.com/problems/snapshot-array/solution/
    def __init__(self, length: int):
        self.id = 0
        self.history_records = [[[0, 0]] for _ in range(length)]
        
    def set(self, index: int, val: int) -> None:
        self.history_records[index].append([self.id, val])

    def snap(self) -> int:
        self.id += 1
        return self.id - 1

    def get(self, index: int, snap_id: int) -> int:
        snap_index = bisect.bisect_right(self.history_records[index], [snap_id, 10 ** 9])
        return self.history_records[index][snap_index - 1][1]
