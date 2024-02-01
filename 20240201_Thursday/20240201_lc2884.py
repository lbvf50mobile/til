# Leetcode: 2884. Modify Columns.
# https://leetcode.com/problems/modify-columns/
# = = = = = = = = = = = = = =
# Accepted.
# Thanks God, Jesus Christ!
# = = = = = = = = = = = = = =
# Runtime: 721 ms, faster than 5.08% of Pandas online submissions for Modify
# Columns.
# Memory Usage: 65.4 MB, less than 5.45% of Pandas online submissions for
# Modify Columns.
# 2024.02.01.

import pandas as pd

def modifySalaryColumn(employees: pd.DataFrame) -> pd.DataFrame:
    # https://leetcode.com/problems/modify-columns/solution/
    employees['salary'] = employees['salary'] * 2
    return employees
    
