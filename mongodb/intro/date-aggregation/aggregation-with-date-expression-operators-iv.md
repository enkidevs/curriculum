---
author: Stefan-Stojanovic

aspects:
  - introduction
  - new

type: normal

category: how to

---

# Aggregation With `$dayOfYear`, `$week` and `$dayOfWeek`

---
## Content

In this insight, we will use the same document[1] that you have previously seen.

### $dayOfYear

The `$dayOfYear` date operator is used to extract the exact day of the year the document was created on. The output goes from 1 to 366.

Example:
```js
db.pokedex.aggregate([
  { $match: { name: "Bulbasaur" } },
  {
    $project: {
      DayOfTheYear: { $dayOfYear: "$createdAt" },
      _id: 0
    }
  }
]);
```

Output:
```js
{ 
  "DayOfTheYear" : 282 
}
```

### $week

The `$week` date operator is used to extract the exact week of the year the document was made on. The output goes from 1 to 53.

**Note:** The weeks start counting on Sunday(`1`) each year. If the year stars on any other day, those days belong in week `0` and week `1` starts from the first Sunday of that year.

Example:
```js
db.pokedex.aggregate([
  { $match: { name: "Bulbasaur" } },
  {
    $project: {
      WeekOfTheYear: { $week: "$createdAt" },
      _id: 0
    }
  }
]);
```
Output:
```js
{ 
  "WeekOfTheYear" : 40 
}
```

### $dayOfWeek

The `$dayOfWeek` date operator is used to extract the exact day of the week the document was made on. The output goes from 1 to 7, with 1 being Sunday and 7 being Saturday.

Example:
```js
db.pokedex.aggregate([
  { $match: { name: "Bulbasaur" } },
  {
    $project: {
      DayOfTheWeek: { $dayOfWeek: "$createdAt" },
      _id: 0
    }
  }
]);
```
Output:
```js
{ 
  "DayOfTheWeek" : 4 
}
```

---
## Practice

Fill in the blanks:

The ??? operator is used to extract the exact day of the year the document was made on as a number between ???.

The ??? operator is used to extract the exact week the document was made and as a number between ???

The ??? operator is used to extract the exact day of the week the document was created on ???

* `$dayOfYear`
* `1-366`
* `$week`
* `0-53`
* `$dayOfWeek`
* `as a number between 1-7`
* `as a word Sunday-Saturday`
* `0-365`
* `1-54`



---
## Footnotes

[1:Previous Document]
Document used in the previous insight:
```javascript
// Document with the ISODate
{ 
  "_id": ObjectId("5d9d8a6a0b24990f19398209"),
  "name": "Bulbasaur",
  "type": "Grass",
  "createdAt": ISODate("2019-10-09T07:21:14Z")
}
```
