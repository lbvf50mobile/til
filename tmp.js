// Implementation of sorting array contained two types of entities.
let arr = [
  "Name 1",
"Third",
"First",
"Name 5",
"Fourth",
"Second",
"Name 3",
];

console.log("Input array:",arr);

const super_sort = x =>{
  let names = x.filter(x => /[0-9]$/.test(x));
  let numbers = x.filter(x => /^[a-z]+$/i.test(x));
  console.log("names", names);
  console.log("numbers", numbers);
  let sorted_names = sort_names(names);
  let sorted_numbers = sort_numbers(numbers);
  return [...sorted_names, ...sorted_numbers];
}
const sort_names = x =>{
  x = x.map(x => [Number(x.match(/[0-9]+$/gi)[0]),x]);
  x.sort((a,b) => a[0] - b[0]);
  return x.map(x => x[1]);
}
const sort_numbers = x =>{
  let order = {
    'first': 1,
    'second': 2,
    'third': 3,
    "fourth": 4,
  };
  x = x.slice();
  x.sort((a,b) => order[a.toLowerCase()] - order[b.toLowerCase()])
  return x;
}


let sorted_arr = super_sort(arr);
console.log("Sorted array:", sorted_arr);
