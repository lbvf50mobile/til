# Leetcode: 2879. Display the First Three Rows.
# https://leetcode.com/problems/display-the-first-three-rows/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 617 ms, faster than 15.53% of Pandas online submissions for Display
# the First Three Rows.
# Memory Usage: 65.3 MB, less than 9.96% of Pandas online submissions for
# Display the First Three Rows.
# 2024.02.01.

import pandas as pd

def selectFirstRows(employees: pd.DataFrame) -> pd.DataFrame:
    # https://www.geeksforgeeks.org/how-to-get-first-row-of-pandas-dataframe/
    return employees[:3]
    
