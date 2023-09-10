# Leetcode: 1359. Count All Valid Pickup and Delivery Options.
# https://leetcode.com/problems/count-all-valid-pickup-and-delivery-options/
class Solution:
    # Copied from:
    # https://leetcode.com/problems/count-all-valid-pickup-and-delivery-options/discuss/516941/Python-O(n)-with-detailed-explanations
    def countOrders(self, n: int) -> int:
        res = 1
        p = 1000_000_007
        for i in range(1, n+1):
            res *= i * (2*i - 1)
            res = res % p
        return res
