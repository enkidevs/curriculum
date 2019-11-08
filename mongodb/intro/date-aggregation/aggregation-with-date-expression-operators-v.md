---
author: Stefan-Stojanovic

levels:
  - beginner
  
aspects:
  - introduction

type: normal

category: must-know

links:

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
      dayOfTheYear: { $dayOfYear: "$Date" },
      Year: { $year: "$Date" },
      Month: { $month: "$Date" },
      DayOfTheMonth: { $dayOfMonth: "$Date" },
      Hour: { $hour: "$Date" },
      Minutes: { $minute: "$Date" },
      Seconds: { $second: "$Date" },
      Milliseconds: { $millisecond: "$Date" },
      Week: { $week: "$Date" },
      DayOfTheWeek: { $dayOfWeek: "$Date" },
      _id: 0
    }
  }
]);
```

Output:
```js
{ 
  "dayOfTheYear": 282, 
  "Year": 2019, 
  "Month": 10, 
  "DayOfTheMonth": 9, 
  "Hour": 7, 
  "Minutes": 21, 
  "Seconds": 14, 
  "Milliseconds": 0, 
  "Week": 40, 
  "DayOfTheWeek": 4 
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
      dayOfTheYear: { ???: "$Date" },
      Year: { ???: "$Date" },
      Month: { ???: "$Date" },
      DayOfTheMonth: { ???: "$Date" },
      Hour: { ???: "$Date" },
      Minutes: { ???: "$Date" },
      Seconds: { ???: "$Date" },
      Milliseconds: { ???: "$Date" },
      Week: { ???: "$Date" },
      DayOfTheWeek: { ???: "$Date" },
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
Here is the document used in the previous insight:
```javascript
// document without the Date
{ 
	"_id": ObjectId("5d9d8a6a0b24990f19398209"),
  "name": "Bulbasaur",
	"type": "Grass"
}
// Document with the Date
{ 
	"_id": ObjectId("5d9d8a6a0b24990f19398209"),
  "name": "Bulbasaur",
	"type": "Grass",
  "Date": ISODate("2019-10-09T07:21:14Z")
}
```
