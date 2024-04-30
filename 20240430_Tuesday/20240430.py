# https://leetcode.com/problems/number-of-wonderful-substrings/solution/
class Solution(object):
    def wonderfulSubstrings(self, word):
        """
        :type word: str
        :rtype: int
        """
        # Create the frequency map
        # Key = bitmask, Value = frequency of bitmask key
        freq = {}

        # The empty prefix can be the smaller prefix, which is handled like this
        freq[0] = 1

        mask = 0
        res = 0
        for c in word:
            bit = ord(c) - 97

            # Flip the parity of the c-th bit in the running prefix mask
            mask ^= (1 << bit)

            # Count smaller prefixes that create substrings with no odd occurring letters
            if mask in freq:
                res += freq[mask]
                freq[mask] += 1
            else:
                freq[mask] = 1

            # Loop through every possible letter that can appear an odd number of times in a substring
            for odd_c in range(0, 10):
                if (mask ^ (1 << odd_c)) in freq:
                    res += freq[mask ^ (1 << odd_c)]

        return res
