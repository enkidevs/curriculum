---
author: Stefan-Stojanovic

aspects:
  - introduction
  - new

type: normal

category: how to

---

# Intro to Aggregation With Date Expression Operators

---
## Content

In MongoDB, it is possible to aggregate a collection using date expression operators. These operators can be used to extract the specific time at which a document was made, they can be used to find a group of documents created on a specific date or to find all documents between 2 dates.

There are a total of 10 operators that can be used to aggregate a collection by date.

These are:
- `$year`
- `$month`
- `$dayOfMonth`
- `$week`
- `$hour`
- `$minute`
- `$second`
- `$milisecond`
- `$dayOfYear`
- `$dayOfWeek`

In a previous workout, we learned what `ObjectId`s are and how to extract the date in the ISODate format. 

Short reminder:

Let's say we have this pokémon document.
```javascript
{ 
  "_id": ObjectId("5d9d8a6a0b24990f19398209"),
  "name": "Bulbasaur",
  "type": "Grass"
}
```

We can copy the `ObjectId`: `ObjectId("5d9d8a6a0b24990f19398209")` and add the `.getTimestamp()` method after it in our `mongodb` shell and hit enter.

This will output the date part from the `ObjectId` in an ISODate format.

Output:
```javascript
ISODate("2019-10-09T07:21:14Z")
```

To best demonstrate the usage of various date expression operators, we will add the creation date to our `"Bulbasaur"` pokémon and use it as the example in the upcoming insights:

```json
{ 
  "_id": ObjectId("5d9d8a6a0b24990f19398209"),
  "name": "Bulbasaur",
  "type": "Grass",
  "createdAt": ISODate("2019-10-09T07:21:14Z")
}
```

---
## Practice

Which method is used to extract the date from an `ObjectId` value in an ISODate format?

???

* `getTimestamp()`
* `getDate()`
* `getTime()`
* `timeStamp()`
