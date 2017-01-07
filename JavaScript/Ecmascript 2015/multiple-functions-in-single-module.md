# Multiple Functions in Single Module
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know

links:

  - '[link to learn more](https://enki.com)'

---
## Content

A module always exists in one file but within this file we can declare multiple functions.
Let’s add a second function called triple.
 
We will again use the **export** keyword to let JavaScript know we want to use this:

```
export function triple(x) {
    return x * 3;
} 
```

Now if we just want to use specific functions from a module we can do the following:

```
import { triple as mathFuncs } from ‘double’;
mathFuncs.triple(2); //6
mathFuncs.double(2); //error not imported
```

As we have seen we can alias the module imported which is especially useful if it has a really long name:

```
import {p as shortName} from 'moduleWithSomeReallyLongNames';
```

There are numerous other ways we can export functions so the following is also valid:
```
export { dbl, triple };
export { dbl as double};
```

We can also declare a single default function or class to be exported by using the default keyword:

```
export default person { ··· }
import person from 'person';
```

Modules like variables are hoisted but imports and exports must exist at the top level of a module and cannot be conditional so the below is is invalid:

```
if (condition) {
    import 'double'; //error
}
```

---