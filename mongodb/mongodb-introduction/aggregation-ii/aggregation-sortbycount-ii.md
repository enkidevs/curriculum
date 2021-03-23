---
author: Stefan-Stojanovic
type: normal
category: tip
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# $sortByCount and $match


---

## Content

We can use the `$match` aggregation stage to only match documents of a certain `type` followed by sorting by count for documents that match our specified `type`.

Let's say we want to count and sort documents by their `secondType`, but we are only interested in documents where the `type` is `"Water"`. We can do so like this:

```javascript
db.pokemon.aggregate([
  {
    $match: { type: "Water" }
  },
  {
    $sortByCount: "$secondType"
  }
])
```

Output:

```javascript
{ "_id": "Poison", "count": 3 }
{ "_id": null, "count": 45 }
```

What this output means is that:

- there are 3 pokémon that have `type: "Water"` and `secondType: "Poison"`
- there are 45 pokémon that have `type: "Water"` and `secondType: null`

You are not limited to using only the `$match` stage. Another good example is to count and sort documents where the `power` is greater than or equal to 300.

```javascript
db.pokemon.aggregate([
  {
    $match: { power: { $gte: 300 } }
  },
  {
    $sortByCount: "$secondType"
  }
])
```

Output:

```javascript
{ "_id": "Fighting", "count": 3 }
{ "_id": "Fire", "count": 23 }
{ "_id": null, "count": 91 }
```

What this output means is that:

- there are 3 pokémon that have `secondType: "Fighting"` and a `power` greater than 300
- there are 23 pokémon that have `secondType: "Fire"` and a `power` greater than 300
- there are 91 pokémon that don't have a `secondType` (`secondType: null`) and have a `power` greater than 300


---

## Practice

Let's say we have a collection named `students` with 2000 documents. Each student has a `name`, `studentId` and `averageGrade` field. Count all documents whose `averageGrade` is greater than `90` and sort them in descending order.

```javascript
db.students.???([
  {
    ???: { ???: { $gt: 90 } }
  },
  {
    ???: "$averageGrade"
  }
])
```

- `aggregate`
- `$match`
- `averageGrade`
- `$sortByCount`
- `$count`
- `$find`
- `STUDENTS`
- `name`
- `studentId`
