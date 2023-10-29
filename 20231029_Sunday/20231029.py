# https://leetcode.com/problems/poor-pigs/discuss/94266/Another-explanation-and-solution
def poorPigs(self, buckets, minutesToDie, minutesToTest):
    pigs = 0
    while (minutesToTest / minutesToDie + 1) ** pigs < buckets:
        pigs += 1
    return pigs
