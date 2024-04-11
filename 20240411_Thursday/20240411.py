# https://leetcode.com/problems/remove-k-digits/discuss/1779520/Python3-MONOTONIC-STACK-(oo)-Explained
class Solution:
    def removeKdigits(self, num: str, k: int) -> str:
        st = list()
        for n in num:
            while st and k and st[-1] > n:
                st.pop()
                k -= 1
            
            if st or n is not '0': # prevent leading zeros
                st.append(n)
                
        if k: # not fully spent
			st = st[0:-k]
            
        return ''.join(st) or '0'
