
## Content

`JSON.stringify()` method is used to convert a JavaScript object or value to a JSON string. 

Example:

```javascript
const ourDog = {
    name: 'Rocky',
    age: 2,
    'dog years': 14
}

console.log(JSON.stringify(ourDog));
//prints "{"name":"Rocky","age":2,"dog years":14}"
```


To override the default behaviour of `JSON.stringify()` you can provide a key `toJSON` in your object, mapping to a function with your desire behaviour.

Example:

```javascript
const ourDog = {
    name: 'Rocky',
    age: 2,
    'dog years': 14,
    toJSON: () => ({food: 'dog snacks'})
}

console.log(JSON.stringify(ourDog));
//prints {"food":"dog snacks"}
```

To convert JSON string back to JavaScript you can use `JSON.parse()` method.

Example:

```javascript
const dog = JSON.parse('{"name":"Rocky","age":2,"dog years":14}');
console.log(dog.name);
//prints "Rocky"
```