---
author: alexjmackey

levels:

  - beginner

type: normal

category: feature

inAlgoPool: false


links:

  - '[MDN](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment){website}'


---

# Destructuring (Part 2)

---
## Content

Destructuring can also be used to work with objects.

**Specifying where to assign variables**

Sometimes when using destructuring you will want to specify where values should be assigned - this can be done as follows: 

```
var source =
{company: "Enki", topic: "js"};

var {company:v1, topic:v2} = source;
//v1="Enki"
//v2="js"

```

**Default Properties**

You can also assign a default value that will be used when destructuring if a source object doesn’t have a matching property.

Below the default value of `200` will be used for variable `y` as the source object does not have a `y` property.

Note how `x`'s default is overwritten as the `x` property exists:

```
var {x=1, y=200} = {x:100};
//x=100, y=200
```

