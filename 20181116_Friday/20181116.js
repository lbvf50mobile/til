// Js For of iteration and destructuring;
console.log("alias x='node 20181116_Friday/20181116.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment#For_of_iteration_and_destructuring

console.log("For of iteration and destructuring:");

let people = [
    {
        name: "Mike Smith",
        family:{
            mother: 'Jane Smith',
            father: "Harry Smith",
            sister: 'Samantha Smith'
        },
        age: 35
    },
    {
        name: 'Tom Jones',
        family:{
            mother: 'Norah Jones',
            father: 'Richard Jones',
            brother: "Howard Jones"
        },
        age: 25
    }
];

for (let {name: n, family: {father: f}} of people){
    console.log(`Name ${n}, Father ${f}`)
}

