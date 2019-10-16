---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic
  
aspects:
  - introduction
  - new

type: normal

category: feature

---

# Aggregation With Object Expression Operators II

---
## Content

The `$objectToArray` object expression operator is used to convert a document/object to an array.

The outputted array has 2 fields, `k` and `v`, for each key-value pair of the original document, and is considered a document.

For instance, let's say we have this document within our `pokemon` collection:
```javascript
{
  "_id": ObjectId(
    "5d9d8c330b24990f19398214"
  ),
  name: "Pikachu",
  type: "Electric",
  power: 501,
  spells: {
    Basic: "Lightning",
    Strong: "Bolt"
  }
}
```

Example aggregation where we only include the object(`spells`):
```javascript
db.pokemon.aggregate([
  {
    $project: {
      name: 1,
      spells: { $objectToArray: "$spells" }
    }
  }
]);
```

Output:
```javascript
{
   "_id": ObjectId(
    "5d9d8c330b24990f19398214"
  ),
  spells: [
    { k: "Basic", v: "Lightning" },
    { k: "Strong", v: "Bolt" }
  ]
}
```

As you can see in the example above, the object was transformed into an array. Each key-value pair was displayed in `k: "key"` and `v: "value"` pairs.

**Note:** We used the same name `"spells"` to store the converted object. You can use a different name.

---
## Practice

Fill in the gaps below to transform the document into an array and output the converted object into an array with the same name. Project the aggregation's result together with the `power` field.

```javascript
// document:
{
  "_id": ObjectId(
    "5d9d8c330b24990f19398214"
  ),
  name: "Pikachu",
  type: "Electric",
  power: 501,
  spells: {
    Basic: "Lightning",
    Strong: "Bolt"
  }
}

// aggregation
db.pokemon.aggregate([
  {
    $project: {
      ???: 1,
      ???: { ???: "$spells" }
    }
  }
]);
```

* `power`
* `spells`
* `$objectToArray`
* `$documentToArray`
* `$combineObjects`

---
## Revision

Which of these operators are Object expression operators?

???

* `$objectToArray` and `$mergeObjects`
* `$fromObjectToAnArray`
* `$arrayToObjects` and `$mergeArrays`
* `$objectToArray` and `$arrayToObject`
