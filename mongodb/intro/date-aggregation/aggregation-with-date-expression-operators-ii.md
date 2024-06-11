---
author: Stefan-Stojanovic

aspects:
  - introduction
  - new

type: normal

category: how to

---

# Aggregation With `$year`, `$month` and `$dayOfMonth`

---
## Content

Now that we know how to extract the date into an ISODate format, we can use some aggregation operators to find the exact time that the document was made as precise as in milliseconds.

**Note:** For easier readability and comprehension of date operators, we will be using the date from the `name:"Bulbasaur"` document shown in the previous insight. **(The document will also be in the footnotes of every insight of this workout under Previous Document[1])**

**Note:** All 10 date operators have the same syntax:

```js
{
  $DATE_OPERATOR: <expression>
}
```

### $year

The `$year` operator is used to find the year the document was created.

Since we are only looking for the date of a specific document, we will use the `$match` stage to only match the document we want. Also, we will use the `$project` stage to only aggregate the parts of the date we want.

Example:
```javascript
db.pokedex.aggregate([
  { $match: { name: "Bulbasaur" } },
  {
    $project: {
      createdAtYear: { $year: "$createdAt" }
    }
  }
]);

```
Output:
```javascript
{
  "_id": ObjectId("5d9d8a5a0b24990f19398208"),
  "createdAtYear": 2019
}
```

As you can see in the example above, the `$match` stage was used to match the pokémon document named `"Bulbasaur"` and get the year it was created.

The "createdAt" in `createdAtYear: { $year: "$createdAt" }` is just how we named our date field after we extracted the date with the `.getTimestamp()` method.

**Note:** Just like with any aggregation, if we don't exclude the `_id` with the project stage, it will be displayed by default.

Since we already know the exact document and its `ObjectId` we can exclude it to only output the Date.

Example with `_id` excluded:
```javascript
db.pokedex.aggregate([
  { $match: { name: "Bulbasaur" } },
  {
    $project: {
      createdAtYear: { $year: "$createdAt" },
      _id: 0
    }
  }
]);

```
Output:
```javascript
{
  "createdAtYear": 2019
}
```

### $month

The `$month` operator is used to find the month the document was created on. The output goes from `1` to `12`, with `1` being January and `12` being December.

```js
db.pokedex.aggregate([
  { $match: { name: "Bulbasaur" } },
  {
    $project: {
      createdAtMonth: { $month: "$createdAt" },
      _id: 0
    }
  }
]);

```

Output:
```javascript
{
  "createdAtMonth": 10
}
```
### $dayOfMonth

The `$dayOfMonth` operator is used to find the day of the month the document was created on. The output goes from `1`  to `31`.

```js
db.pokedex.aggregate([
  { $match: { name: "Bulbasaur" } },
  {
    $project: {
      dayOfTheMonth: {
        $dayOfMonth: "$createdAt"
      },
      _id: 0
    }
  }
]);

```

Output:
```javascript
{
  "dayOfTheMonth" : 9
}
```

---
## Practice
Fill in the blanks:

The ??? operator is used to extract the year portion of the ISODate.
The ??? operator is used to extract the month the document was made as a ???
The ??? operator is used to extract the day of the month the document was created on.

* `$year`
* `$month`
* `number from 1-12`
* `$dayOfMonth`
* `$day`
* `Word, January-December`

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
