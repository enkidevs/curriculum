# Immutability helpers in **React**
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

parent: custom-proptype-s-to-be-required

links:

  - >-
    [facebook.github.io](https://facebook.github.io/react/docs/update.html){website}

---
## Content

Opting out for an immutable style of data management, a significant speed up can be achieved by easily implementing a fast `shouldComponentUpdate()` lifecycle method.

Given the fact that **JavaScript** wasn't designed for dealing with immutable data, **React** provides an immutability helper `update()` with a  syntax inspired by **MongoDB**.

Mutate without having any way of determining which data has changed:

```javascript
myData.x.y.z = 7;
myData.a.b.push(9);
```

Using the immutability helper:
```javascript
var update = require('react-addons-update');
var newData = update(myData, {
  x: {y: {z: {$set: 7}}},
  a: {b: {$push: [9]}}
});
```
The `$` is a prefix for keys that are called commands such as `{$push: array}` or `{$apply: function}`.

(Shallow) merge:
```javascript
var obj = {a: 5, b:3};
var newObj = update(obj, {
  $merge: {b: 6, c: 7}});
//newObj = {a: 5, b:6, c:7}
```

Other worth mentioning intuitive commands are `{$unshift: array}` and `{$splice: array of arrays}`.

---
## Practice

```javascript
myData.x.y = 3;
myData.a.b.push(4);
```
Give the equivalent of the code above with the help of immutability helpers:
```javascript
var update = require('react-addons-update');
var newObj = ???(myData, {
 x: {y: {???set :3}},
 a: {b: {$???: [4]}},
});
```

*`update`
*`$`
*`push`
*`set`
*`$unshift`
*`splice`
*`arrray`
*`{`
*`}`

---
## Revision

```javascript
myData.x.y = 3;
myData.a.b.push(4);
```
Give the equivalent of the code above with the help of immutability helpers:
```javascript
var update = require('react-addons-update');
var newObj = ???(myData, {
 x: {y: {???set :3}},
 a: {b: {$???: [4]}},
});
```

*`update`
*`$`
*`push`
*`set`
*`$unshift`
*`splice`
*`arrray`
*`{`
*`}`
