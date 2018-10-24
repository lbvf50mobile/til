// JS Promise.all

console.log("alias x='node 20181024_Wednesday/20181024.js'")

// Promise.all(iterable)
// Returns a promise that either fulfills when all of the promises in the
// iterable argument have fulfilled or refects as soosn as one of the promises in the iterable
// arguments rejected.
// If the returned promise fulfills, it is fullfilled with an array of the values from the fulfiled promises
// in the same order as defined in the iterable. If the returned promise rejects,
// it is rejected with the reason from the first promise in the iterable that rejected.
// this method can be usefull for aggregating results of multimple promises.