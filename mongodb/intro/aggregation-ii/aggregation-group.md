---
author: Stefan-Stojanovic

levels:
  - basic

aspects:
  - new

type: normal

category: must-know

---

# Aggregation $group

---
## Content

The aggregation `$group` stage is used to group documents by a specified expression. The grouped documents are sent to the next stage and split into a document for each grouping. Also, each outputted document contains an `_id` with a distinct group by key.

The syntax for `$group` is:
```javascript
{
  $group: {
    _id: expression,
    field1: {
      accumulator1: expression1
    },
    // ...
  }
}
```

Only the `_id` field is mandatory. Everything else is optional.

Here are some accumulators you can use:
- `$avg` calculates an average of the numerical values and returns the computed result.
- `$mergeObjects` combines documents and returns the computed document for each group.
- `$sum` calculates the sum of the input.

For instance, let's say we want to group all pokémon in the `pokemon` collection by their `type`. We can do so like this:
```javascript
db.pokemon.aggregate([
  {
    $group: {
      _id: "$type"
    }
  }
])
```
Output:
```javascript
{ "_id": "Bug" }
{ "_id": "Psychic" }
{ "_id": "Normal" }
{ "_id": "Rock" }
{ "_id": "Electric" }
{ "_id": "Flame" }
{ "_id": "Grass" }
{ "_id": "Fairy" }
{ "_id": "Fire" }
{ "_id": "Water" }
```

**Note:** As you can notice in the example above, when adding the name of the field you want your collection grouped by, you have to add a `$` before the name. This is the normal syntax for this aggregation stage.

Now we know which `type`s of pokémon we have, however, we don't know how many documents each type has. We can count it by adding a comma after the `_id: "$type"` and adding `count: { $sum: 1 }`.

```javascript
db.pokemon.aggregate([
  {
    $group: {
      _id: "$type",
      count: { $sum: 1 }
    }
  }
])
```
Output:
```javascript
{ "_id": "Bug", "count": 41 }
{ "_id": "Psychic", "count": 22 }
{ "_id": "Normal", "count": 208 }
{ "_id": "Rock", "count": 31 }
{ "_id": "Electric", "count": 66 }
{ "_id": "Flame", "count": 2 }
{ "_id": "Grass", "count": 57 }
{ "_id": "Fairy", "count": 12 }
{ "_id": "Fire", "count": 13 }
{ "_id": "Water", "count": 42 }
```

The `$sum` is used to sum all numerical values in the `$group` stage by a specified expression and return the computed result. The `1` in `{ $sum: 1 }` is our specified expression and means it will sum all values once.

---
## Practice

The `$group` aggregation stage is used ???

The `$sum` accumulator is used ???

* to group documents by a specified expression.
* to sum all numerical values by a specified expression.
* to group aggregation stages as a single aggregation.
* to sum all non-numerical and numerical values and output a combined result.

---
## Revision

Let's say we have a collection named `students` with 30000 documents. Each student in the `students` collection has a `name`, an `_id` and a `finalGrade` field. Group all documents by their `finalGrade` field and count how many students have each grade.

```javascript
db.students.???([
  {
    ???: {
      ???: "$finalGrade",
      count: { ???: ??? }
    }
  }
])
//{ "_id" : "C", "count" : 8363}
//{ "_id" : "B", "count" : 9311}
//{ "_id" : "A", "count" : 4640}
//{ "_id" : "F", "count" :  1867}
//{ "_id" : "D", "count" :  5819}
```

* `aggregate`
* `$group`
* `_id`
* `$sum`
* `1`
* `0`
* `2`
* `group`
* `find`
