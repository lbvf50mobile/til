# Leetcode: 2559. Count Vowel Strings in Ranges
# https://leetcode.com/problems/count-vowel-strings-in-ranges/editorial/?envType=daily-question&envId=2025-01-02
class Solution:
    def vowelStrings(
        self, words: List[str], queries: List[List[int]]
    ) -> List[int]:
        ans = [0] * len(queries)
        vowels = {"a", "e", "i", "o", "u"}
        prefix_sum = [0] * len(words)
        sum = 0
        for i in range(len(words)):
            current_word = words[i]
            if (
                current_word[0] in vowels
                and current_word[len(current_word) - 1] in vowels
            ):
                sum += 1
            prefix_sum[i] = sum

        for i in range(len(queries)):
            current_query = queries[i]
            ans[i] = prefix_sum[current_query[1]] - (
                0 if current_query[0] == 0 else prefix_sum[current_query[0] - 1]
            )

        return ans
