---
author: Stefan-Stojanovic

aspects:
  - introduction

type: normal

category: must-know

links:
- '[Date Operators](https://docs.mongodb.com/manual/reference/operator/aggregation/#date-expression-operators){documentation}'

---
# Aggregation With All Date Operators
---
## Content

Now that we've seen all the date operators and know how to use them, let's take a look at an example of all operators being used in the same aggregation.

**Note:** We are using the same document[1] as in the previous insights.

Example with all operators:
```js
db.pokemon.aggregate([
  { $match: { name: "Bulbasaur" } },
  {
    $project: {
      dayOfTheYear: { $dayOfYear: "$createdAt" },
      createdAtYear: { $year: "$createdAt" },
      createdAtMonth: { $month: "$createdAt" },
      dayOfTheMonth: { $dayOfMonth: "$createdAt" },
      createdAtHour: { $hour: "$createdAt" },
      createdAtMinute: { $minute: "$createdAt" },
      createdAtSecond: { $second: "$createdAt" },
      createdAtMillisecond: { $millisecond: "$createdAt" },
      weekOfTheYear: { $week: "$createdAt" },
      dayOfTheWeek: { $dayOfWeek: "$createdAt" },
      _id: 0
    }
  }
]);
```

Output:
```js
{ 
  "dayOfTheYear": 282, 
  "createdAtYear": 2019, 
  "createdAtMonth": 10, 
  "dayOfTheMonth": 9, 
  "createdAtHour": 7, 
  "createdAtMinute": 21, 
  "createdAtSecond": 14, 
  "createdAtMillisecond": 0, 
  "weekOfTheYear": 40, 
  "dayOfTheWeek": 4 
}
```

---
## Practice

Fill in the blanks below to get all parts of the date the document with `name: "Bulbasaur"` was created on.
```js
db.pokemon.aggregate([
  { $match: { name: "Bulbasaur" } },
  {
    $project: {
      dayOfTheYear: { ???: "$createdAt" },
      createdAtYear: { ???: "$createdAt" },
      createdAtMonth: { ???: "$createdAt" },
      dayOfTheMonth: { ???: "$createdAt" },
      createdAtHour: { ???: "$createdAt" },
      createdAtMinute: { ???: "$createdAt" },
      createdAtSecond: { ???: "$createdAt" },
      createdAtMillisecond: { ???: "$createdAt" },
      weekOfTheYear: { ???: "$createdAt" },
      dayOfTheWeek: { ???: "$createdAt" },
      _id: 0
    }
  }
]);
```

* `$dayOfYear`
* `$year`
* `$month`
* `$dayOfMonth`
* `$hour`
* `$minute`
* `$second`
* `$millisecond`
* `$week`
* `$dayOfWeek`
* `$dayOfTheYear`
* `$dayOfTheMonth`
* `$dayOfTheWeek`
* `$Year`
* `$Hour`
* `$Second`
* `$Minute`
* `$Week`
* `$Month`

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
