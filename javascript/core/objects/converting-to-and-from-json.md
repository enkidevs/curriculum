---
author: Ewa Trzemzalska

levels:

    - begginer
    - basic

type: normal

category: feature

tags:

  - JSON
  - introduction

---
# Converting to and from JSON

---
## Content

`JSON.stringify()` method is used to convert a JavaScript object or value to a JSON string. 

Example:

```javascript
const ourDog = {
    name: 'Leo',
    'dog years': 14
}

console.log(JSON.stringify(ourDog));
//prints '{"name":"Leo","dog years":14}'
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
const ourJSON = '{"name":"Roxy","age":2}'
const dog = JSON.parse(ourJSON);
console.log(dog.name);
//prints "Roxy"
```
---

## Quiz

### What will be returned by the following code?

What will be returned by the following code?

```javascript
const enkiObj = {
    a: 'first',
    b: 'second',
    toJSON: () => ({c: 'third'})
}

JSON.stringify(enkiObj);
```

* `"{"a":"first","b":"second"}"`
* `"{"a":"first","b":"second","c":"third"}"`
* `"{"c":"third"}"`
