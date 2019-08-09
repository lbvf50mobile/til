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

## Comments

- @byteflux Actually, turns out it's because they want you to consider everything at the same parenthetical depth to be grouped together.
So ((2 + 2) * 2) * 3 + (2 + (2 * 2)) at the deepest level becomes 2+2<magic>2*2, and since * is processed before +, it wants the multiplication first. Completely against real math rules but there ya go. If you're going purely on left/right that might be why your hidden test is failing.

- my comment:

Here no need to create tree. Here need to describe each operator, and select one that has maximum priority and stored deep in parentheses.  @mike_m72  thank you for your comments.

1) Create plain array of the objects that describe an operator. Each element contains type (1: +, 2: *), parentheses level, index of an operator.
2) Filter #1: Select elements with maximum parentheses level.
3) Filter #2:  Select elements with maximum type.
4)  Return position of the first element from the filtered array. 



