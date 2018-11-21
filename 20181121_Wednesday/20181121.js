// JS Destructuring: Unpacking fields form objects passed as function parameter;
console.log("alias x='node 20181121_Wednesday/20181121.js'");

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment#Unpacking_fields_from_objects_passed_as_function_parameter

const userId = ({id}) => id;
const whois = ({displayName, fullName: {firstName: name}}) => console.log(`${displayName} is ${name}`);

let user = {
    id: 42,
    displayName: 'SuperUser',
    fullName: {
        firstName: 'Super',
        lastName: 'User',
    }
};

console.log(`userId: ${userId(user)}`); // 42
whois(user); // SuperUser  is Super
