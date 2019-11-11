---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature


links:

  - '[Immutability Helper](https://github.com/kolodny/immutability-helper){website}'

parent: custom-proptype-s-to-be-required

aspects:
  - deep

---

# Immutability helpers in React

---
## Content

When opting in for an immutable style of data management, a significant speedup can be achieved by implementing a `shouldComponentUpdate()` lifecycle method. To do this, you would need a method that aids with comparing *versions* of your component's `state`.

Let's take a look at the following example of mutating data:

```javascript
myData.x.y.z = 10;
// or...
myData.a.b.push(13);
```

Given the fact that **JavaScript** wasn't designed for dealing with immutable data, using one of the above methods does not provide a way of determining which data has changed after the mutation. To help with this, **React** used to provide an immutability helper (has since become legacy) which is now replaced by the `immutability-helper` library.

This new library can be installed using the NPM package manager:

```shell
npm install immutability-helper --save
```

Now, with the help of the immutability helper we would write:

```javascript
import update from "immutability-helper";

const newData = update(myData, {
  x: { y: { z: { $set: 10 } } },
  // myData.x.y.z = 10;
  a: { b: { $push: [13 ] } }
  // myData.a.b.push(13);
});
```

Although this format might need some getting used to, it provides a much better approach for determining which data has changed [1].

In terms of notation, keys that are preceded by a `$` are called **commands** (`{ $push: array }`, `{ $apply: function }`, etc.) and the data that is being mutated is called the **target**. 

Here is how you would perform a shallow merge using the `update()` method:

```javascript
var obj = { a: 5, b: 3 };
var newObj = update(obj, {
  $merge: { b: 6, c: 7 }
});
//newObj = {a: 5, b: 6, c:7}
```

Other commands worth mentioning are `{ $unshift: array }` and `{ $splice: array of arrays }`, but you can see all the available methods in the Resources section of this insight.

---
## Practice

Given:

```javascript
myData.x.y = 3;
myData.a.b.push(4);
```

Write the equivalent with the aid of immutability helpers:

```javascript
import update from "immutability-helper";

var newObj = ???(myData, {
 x: {y: {???set :3}},
 a: {b: {$???: [4]}},
});
```


* `update`
* `$`
* `push`
* `set`
* `$unshift`
* `splice`
* `arrray`
* `{`
* `}`

---
## Revision

Given:

```javascript
myData.x.y = 3;
myData.a.b.push(4);
```

Write the equivalent with the aid of immutability helpers:

```javascript
import update from "immutability-helper";

var newObj = ???(myData, {
 x: {y: {???set :3}},
 a: {b: {$???: [4]}},
});
```


* `update`
* `$`
* `push`
* `set`
* `$unshift`
* `splice`
* `arrray`
* `{`
* `}`

---
## Footnotes

[1:Deep Copies]
There is another method to make this comparison possible, but it requires a lot of writing and provides many opportunities for bugs to appear. The process would consist of creating a new copy of your data, changing the parts that need to be changed, and finally comparing the old copy and the new copy using triple-equals.
