---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic
  
aspects:
  - introduction
  - new

type: normal

category: how to

---

# Aggregation With $hour, $minutes, $seconds and $milliseconds

---
## Content

For the document used in aggregation, make sure to check the Previous Document[1] footnote.

### $hour

The `$hour` date operator is used to extract the exact hour the document was created on. The output goes from 0-23.

Example:
```js
db.pokedex.aggregate([
  { $match: { name: "Bulbasaur" } },
  {
    $project: {
      Hour: { $hour: "$Date" },
      _id: 0
    }
  }
]);

```

Output:
```js
{ 
  "Hour" : 7 
}
```

### $minutes

The `$minute` date operator is used to extract the exact minute the document was made on. The output goes from 0 to 59.

Example:
```js
db.pokedex.aggregate([
  { $match: { name: "Bulbasaur" } },
  {
    $project: {
      Minutes: { $minute: "$Date" },
      _id: 0
    }
  }
]);

```
Output:
```js
{ 
  "Minutes" : 21 
}
```

### $seconds

The `$seconds` date operator is used to extract the exact second the document was made on. The output goes from 0-59, however it is possible for the output to be 60 in case of a leap second.

Example:
```js
db.pokedex.aggregate([
  { $match: { name: "Bulbasaur" } },
  {
    $project: {
      Seconds: { $second: "$Date" },
      _id: 0
    }
  }
]);

```
Output:
```js
{ 
  "Seconds" : 14 
}
```

### $milliseconds

The `$milliseconds` date operator is used to extract the exact millisecond the document was made on. The output goes from 0-999.

Example:
```js
db.pokedex.aggregate([
  { $match: { name: "Bulbasaur" } },
  {
    $project: {
      Milliseconds: {
        $millisecond: "$Date"
      },
      _id: 0
    }
  }
]);

```

Output:
```js
{ 
  "Milliseconds" : 0 
}
```

---
## Practice

Fill in the blanks:

The ??? operator is used to extract the exact hour the document was made on.

The ??? operator is used to extract the exact minute the document was made and as a ???

The ??? operator is used to extract the exact second the document was created on as a number between ???.

The ??? operator is used to extract the exact minute the document was made and as a ???


* `$hour`
* `$minutes`
* `number between 0-59`
* `$seconds`
* `0-60, 60 to account for a leap second`
* `$milliseconds`
* `number between 0-999`
* `number between 1-1000`
* `number between 1-60`
* `0-59`

---
## Footnotes

[1:Previous Document]
Here is the document used in the previous insight:
```javascript
// document without the date
{ 
	"_id": ObjectId("5d9d8a6a0b24990f19398209"),
  "name": "Bulbasaur",
	"type": "Grass"
}
// Document with the date
{ 
	"_id": ObjectId("5d9d8a6a0b24990f19398209"),
  "name": "Bulbasaur",
	"type": "Grass",
  "Date": ISODate("2019-10-09T07:21:14Z")
}
```
