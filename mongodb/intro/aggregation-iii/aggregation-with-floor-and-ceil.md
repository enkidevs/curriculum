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

# Aggregation With $ceil and $floor

---
## Content

### `$ceil`

The `$ceil` operator is used to return the smallest whole number (integer) that is either greater than or equal to the specified number.

Syntax:
```javascript
{ $ceil: <number> }
```

For instance, let's say we grouped and summed all documents within our database and got a number with many decimal points, we can use the `$ceil` operator to simplify the output.

Example document:
```javascript
{ "_id": "Psychic", "sumOfPowers": 1203.141 }
{ "_id": "Normal", "sumOfPowers": 121.973 }
{ "_id": "Water", "sumOfPowers": 1466.5 }
```
Example aggregation:
```javascript
db.pokemon.aggregate([
  {
    $project: {
      ceilingValue: {
        $ceil: "$sumOfPowers"
      }
    }
  }
]);
```
Output:
```javascript
{ "_id": "Psychic", "sumOfPowers": 1204 }
{ "_id": "Normal", "sumOfPowers": 122 }
{ "_id": "Water", "sumOfPowers": 1467 }
```

**Note:** If the expression can't evaluate a valid number (the number is missing), it will return `null`.

### `$floor`

The `$floor` aggregation operator has the same syntax as `$ceil`.

Syntax:
```javascript
{ $floor: <number> }
```

They also behave very similarly, the only difference being that the `$ceil` operator rounds up, whereas the `$floor` rounds down.

Example on the same document as above:
```javascript
db.pokemon.aggregate([
  {
    $project: {
      floorValue: {
        $floor: "$sumOfPowers"
      }
    }
  }
]);
```
Output:
```javascript
{ "_id": "Psychic", "sumOfPowers": 1203 }
{ "_id": "Normal", "sumOfPowers": 121 }
{ "_id": "Water", "sumOfPowers": 1466 }
```

---
## Practice

What is the difference between the `$floor` and `$ceil` aggregation operators?

???

* The `$floor` operator rounds down, whereas the `$ceil` operator rounds up.
* The `$ceil` operator rounds down, whereas the `$floor` operator rounds up.
* There is no difference.
* The `$floor` operator can only be used on an array of values, whereas the `$ceil` operator can only be used on an integer.
