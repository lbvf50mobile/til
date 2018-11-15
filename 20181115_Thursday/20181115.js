// JS Nested object and array desturcturing.

console.log("alias x='node 20181115_Thursday/20181115.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment#Object_destructuring

console.log("Nested object and array dstructuring");
let methadata = {
    title: "Hey",
    translation: [
        {
            loc: "us",
            title: "way"
        }
    ],
    url: "/"
};

let {title: title, translation: [{loc: l}]} = methadata;
console.log(title);
console.log(l);

console.log("My own example");
let super_obj = {
    name: "The Example",
    arr: [
        1,20,300,4000,50000
    ]
};
let {name: the_name, arr: [one, two, ...rest]} = super_obj;
console.log(the_name);
console.log(one);
console.log(two);
console.log(rest);