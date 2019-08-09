# [firstOperationCharacter](https://app.codesignal.com/arcade/code-arcade/secret-archives/r8LM3RsxeGFXpr8Bj)

Given a string whick represents a valid arithmentic expression, find the index of the character in the given expression correspoing to the arithmentic operation withch needs to be computed first.

Note that several operations of the same type with equal prority are cmputed from left to right.

Se the explanation of the third example for more details, about the operations proitry in this problem.

## Example.

- For `expr = "(2 + 2) * 2"`, the output should be `firstOperationCharacter(expr) = 3`. There are two operations in the expression: `+` and `*`. The result of `+` should e computed first, since it is enclosed in parentheses. Thus, the output is the index of the `+` sign, which is `3`.

- For `expr = "2 + 2 * 2"`, the ouput should be `firstOperationCharacher(expr) = 6`. There are tow operations operations in the given expresion: `+` and `*`. Since ther are no parentheses, `*` should be computed first as it has higher priority. The naswer is position of `*`, withci is `6`.

- For `expr = "((2 + 2) * 2) * 3 + (2 + (2 * 2))"`, the ouput should be `firstOperationCharacter(expr) = 28`. There are two operations which are enclosed in two parentheses: `+` at the postion `4`, and `*` at the positon `28`. Since `*` has higher prriority than `+`, the answer is `28`.

## Input/Output

- **[execution time limit] 4 seconds (rb)**
- **[input] string expr** A string consistin of digits, parantheses, addition and multiplication signs (pluses and astrisks). It is guaranteed that there is at leas one arithmetic sign in it.

*Guaranteed constraints:*

`5 <= expr.length < 45`
- **[output] integer**



