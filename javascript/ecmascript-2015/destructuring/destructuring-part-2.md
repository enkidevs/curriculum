---
author: alexjmackey
type: normal
category: feature
links:
  - >-
    [Destructuring
    Assignment](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Destructuring (Part 2)


---

## Content

Destructuring can also be used to work with objects.

### Specifying where to assign variables

Sometimes when using destructuring you will want to specify where values should be assigned - this can be done as follows:

```javascript
let source =
{company: "Enki", topic: "js"};

let {company:v1, topic:v2} = source;
// v1 = "Enki"
// v2 = "js"

```

### Default Properties

You can also assign a default value that will be used when destructuring if a source object doesn’t have a matching property.

Below the default value of `200` will be used for variable `y` as the source object does not have a `y` property.

Note how `x`'s default is overwritten as the `x` property exists:

```javascript
let {x = 1, y = 200} = {x: 100};
// x = 100, y = 200
```


---

## Practice

What will be the value of `a` at the end of the code execution?

```javascript
const obj = {
  a: 'b'
}

const {a: b, c = 'a'} = obj
// a = ???
```

- undefined
- 'b'
- c
- b
- obj
- null
- 'a'


---

## Revision

Complete the destructuring assignment such that the log statements are correct:

```javascript
const obj = {
  a: 3
}

const {
  ??? ??? ???,
  ??? ??? ???
} = obj;
console.log(foo)
// 3
console.log(bar)
// 20
```

- a
- :
- foo
- bar
- =
- 20
- as
- 3
- ==
- : foo
- : bar
- : 20
 
