---
author: trzemzalskaewa
type: normal
category: feature
tags:
  - JSON
  - introduction
---

# Converting to and From JSON


---

## Content

`JSON.stringify()` method is used to convert a JavaScript object or value to a [JSON](https://www.enki.com/glossary/general/json) string.

Example:

```javascript
const ourDog = {
    name: 'Leo',
    'dog years': 14
}

console.log(JSON.stringify(ourDog));
// prints '{"name":"Leo","dog years":14}'
```

To override the default behavior of `JSON.stringify()` you can provide a key `toJSON` in your object, mapping to a function with your desired behavior.

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

To convert a JSON string back to JavaScript you can use `JSON.parse()` method.

Example:

```javascript
const ourJSON = '{"name":"Roxy","age":2}'
const dog = JSON.parse(ourJSON);
console.log(dog.name);
// prints "Roxy"
```


---

## Practice

What will be printed by this `console.log()`?

```javascript
const ourDog = {
  name: 'Leo',
  'dog years': 14
}

console.log(JSON.stringify(ourDog));
```

```json
'{"???":"???","???":???}'
```

- `name`
- `Leo`
- `dog years`
- `14`
- `12`
- `dog`
- `JSON`
- `years`


---

## Revision

What method should be used in example below?

```javascript
const yourJSON = '{"name":"Coco","age":4}'
const cat = JSON.???(yourJSON);
console.log(cat.name);
// prints "Coco"
```

- `parse`
- `toJSON`
- `stringify`


---

## Quiz

### How well do you know JSON?


What will be returned by the following code?

```javascript
const enkiObj = {
    a: 'first',
    b: 'second',
    toJSON: () => ({c: 'third'})
}

JSON.stringify(enkiObj);
```

???

- `"{"c":"third"}"`
- `"{"a":"first","b":"second"}"`
- `"{"a":"first","b":"second","c":"third"}"`
- `"{a: "first", b: "second"}"`

