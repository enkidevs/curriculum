# Multiple Functions in Single Module
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

inAlgoPool: false

category: must-know

links:

---
## Content

A module always exists in one file but within this file we can declare multiple functions.

Let's expand upon our example and add a second function called triple.
 
We will again use the **export** keyword to let JavaScript know we want to expose this:

```
export function triple(x) {
 return x * 3;
} 
```

If we just want to just use specific functions from a module we can do so with the following syntax:

```
import { triple as mathFuncs } 
from 'double';
mathFuncs.triple(2); //6
mathFuncs.double(2); //error not imported
```

As we have seen we can alias the module imported which is especially useful if it has a really long name:

```
import {p as shortName} from
'modWithReallyLongNames';
```

There are numerous other ways we can export functions:

```
export { dbl, triple };
export { dbl as double};
```

We can also declare a single default function or class to be exported by using the default keyword:

```
export default person { ··· }
```

When we want to use this in another file we would use the following:

```
import person from 'person';
```

Note that modules like variables are hoisted but imports and exports must exist at the top level of a module and cannot be conditional so the below is invalid:

```
if (condition) {
 import 'double'; //error
}
```

---