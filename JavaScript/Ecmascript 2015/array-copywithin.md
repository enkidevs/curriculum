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

**Array.copyWithin** copies part of an array into the same array without modifying the original arrays size.
 
When you use Array.copyWithin changes occur on the array itself so you don’t need to assign the result to another variable.

This is best explained with an example.

Let's say we have the following variable:
```
var alphabet = ["a","b","c","d","e"];
```

..And we want to copy the first two characters at position 2 we could utilize **Array.copyWithin** as follows:

```
alphabet.copyWithin(2,0,2);
\\ ["a","b","a","b","e"]
```

**Array.copyWithin** has 3 different method overloads:

```
copyWithin(
target,
position,
start (optional),
end (optional)
)
```

So we could shorten the above to:

```
alphabet.copyWithin(2)
\\ ["a","b","a","b","c"]
```

You can also use negative position parameters so we could use **Array.copyWithin** to copy to the last two characters:

```
alphabet.copyWithin(-2)
//["a","b","c","a","b"]

---