# https://leetcode.com/problems/furthest-building-you-can-reach/discuss/918515/JavaC%2B%2BPython-Priority-Queue
    def furthestBuilding(self, A, bricks, ladders):
        heap = []
        for i in xrange(len(A) - 1):
            d = A[i + 1] - A[i]
            if d > 0:
                heapq.heappush(heap, d)
            if len(heap) > ladders:
                bricks -= heapq.heappop(heap)
            if bricks < 0:
                return i
        return len(A) - 1
