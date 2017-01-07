# Array.copyWithin
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know

links:

---
## Content

Array.copyWithin copies part of an array into the same array and without modifying the original arrays size.
 
When you use Array.copyWithin the changes occur on the array itself so you don’t need to assign the result to another variable.

This is best explained with an example.

Let's say we have the following variable:
```
var alphabet = ["a","b","c","d","e"];

We want to copy the first two characters at position 2 we could use the following:
alphabet.copyWithin(2,0,2)
\\ ["a", "b", "a", "b", "e"]
```

copyWIthin has 3 different method overloads:

```
copyWithin(target position, (optional) start, (optional) end)
```

So we could shorten the above to:

```
alphabet.copyWithin(2)
\\ ["a", "b", "a", "b", "c"]
```

You can also use negative position parameters so we could use copyWithin to copy to the last two characters:
alphabet.copyWithin(-2)

["a", "b", "c", "a", "b"]


---