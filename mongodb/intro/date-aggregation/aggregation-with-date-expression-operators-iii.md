---
author: Stefan-Stojanovic

aspects:
  - introduction
  - new

type: normal

category: how to

---

# Aggregation With `$hour`, `$minute`, `$second` and `$millisecond`

---
## Content

For the document used in aggregation, make sure to check the Previous Document[1] footnote.

### $hour

The `$hour` date operator is used to extract the exact hour the document was created on. The output goes from 0 to 23.

Example:
```js
db.pokedex.aggregate([
  { $match: { name: "Bulbasaur" } },
  {
    $project: {
      createdAtHour: { $hour: "$createdAt" },
      _id: 0
    }
  }
]);

```

Output:
```js
{ 
  "createdAtHour" : 7 
}
```

### $minute

The `$minute` date operator is used to extract the exact minute the document was made on. The output goes from 0 to 59.

Example:
```js
db.pokedex.aggregate([
  { $match: { name: "Bulbasaur" } },
  {
    $project: {
      createdAtMinute: { $minute: "$createdAt" },
      _id: 0
    }
  }
]);

```
Output:
```js
{ 
  "createdAtMinute" : 21 
}
```

### $second

The `$second` date operator is used to extract the exact second the document was made on. Although the output goes from 0 to 59, it is possible for the output to be 60 in case of a leap second.

Example:
```js
db.pokedex.aggregate([
  { $match: { name: "Bulbasaur" } },
  {
    $project: {
      createdAtSecond: { $second: "$createdAt" },
      _id: 0
    }
  }
]);

```
Output:
```js
{ 
  "createdAtSecond" : 14 
}
```

### $millisecond

The `$millisecond` date operator is used to extract the exact millisecond the document was made on. The output goes from 0 to 999.

Example:
```js
db.pokedex.aggregate([
  { $match: { name: "Bulbasaur" } },
  {
    $project: {
      createdAtMillisecond: {
        $millisecond: "$createdAt"
      },
      _id: 0
    }
  }
]);

```

Output:
```js
{ 
  "createdAtMillisecond" : 0 
}
```

---
## Practice

Fill in the blanks:

The ??? operator is used to extract the exact hour the document was made on.

The ??? operator is used to extract the exact minute the document was made and as a ???

The ??? operator is used to extract the exact second the document was created on as a number between ???.

The ??? operator is used to extract the exact millisecond the document was made and as a ???


* `$hour`
* `$minute`
* `number between 0-59`
* `$second`
* `0-60, 60 to account for a leap second`
* `$millisecond`
* `number between 0-999`
* `number between 1-1000`
* `number between 1-60`
* `0-59`

---
## Footnotes

[1:Previous Document]
Here is the document used in the previous insight:
```javascript
// Document with the ISODate
{ 
  "_id": ObjectId("5d9d8a6a0b24990f19398209"),
  "name": "Bulbasaur",
  "type": "Grass",
  "createdAt": ISODate("2019-10-09T07:21:14Z")
}
```
