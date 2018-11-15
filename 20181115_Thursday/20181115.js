console.log("alias x='node 20181115_Thursday/20181115.js'");

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