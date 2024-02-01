// Leetcode: 2703. Return Length of Arguments Passed.
// https://leetcode.com/problems/return-length-of-arguments-passed/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 49 ms, faster than 88.05% of TypeScript online submissions for
// Return Length of Arguments Passed.
// Memory Usage: 50.9 MB, less than 18.13% of TypeScript online submissions
// for Return Length of Arguments Passed.
// 2024.02.01.

type JSONValue = null | boolean | number | string | JSONValue[] | { [key: string]: JSONValue };

function argumentsLength(...args: JSONValue[]): number {
  return arguments.length
};

/**
 * argumentsLength(1, 2, 3); // 3
 */
