# Leetcode: 68. Text Justification.
# https://leetcode.com/problems/text-justification/
# Runtime: 17 ms, faster than 51.43% of Python online submissions for Text
# Justification.
# Memory Usage: 13.3 MB, less than 93.90% of Python online submissions for Text
# Justification.
# 2023.08.24 Daily Challenge.
class Solution(object):
     def fullJustify(self, words, maxWidth):
        res, cur, num_of_letters = [], [], 0
        for w in words:
            if num_of_letters + len(w) + len(cur) > maxWidth:
                for i in range(maxWidth - num_of_letters):
                    cur[i%(len(cur)-1 or 1)] += ' '
                res.append(''.join(cur))
                cur, num_of_letters = [], 0
            cur += [w]
            num_of_letters += len(w)
        return res + [' '.join(cur).ljust(maxWidth)]
