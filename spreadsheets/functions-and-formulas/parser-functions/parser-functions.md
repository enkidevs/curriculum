---
author: Stefan-Stojanovic

type: normal

category: how-to

links:
  - '[COUNT](https://support.google.com/docs/answer/3093620){documentation}'
  - '[AVERAGE](https://support.google.com/docs/answer/3093615){documentation}'

---

# Parser Functions

---
## Content

Parser functions are a set of functions used to convert cells and their data into different formats.

In this workout, we will introduce some **parser** functions along with reasons to use them.

We'll cover the following:
- `TO_DATE` = converts a number to a date 
- `TO_DOLLARS` = converts a number to a dollar value
- `TO_PERCENT` = converts a number to a percentage
- `TO_TEXT` = converts a number to a text value
- `TO_PURE_NUMBER` = removes any formatting from a number value

Parser functions are especially useful when working with other functions that require a specific data type.

For instance, using `=COUNT()` on improperly formatted dates would not count those dates. Another example is using `=AVERAGE()` on improperly formatted numbers which would not calculate the average.

Each parser function can have a manually inputted argument or a reference to a cell.

> 💡 If you reference a range instead of a single cell, only the first cell of the range will be used.

> 💡 If you are referencing a non-number cell or manually input something other than a number, the function will just return the value as-is.