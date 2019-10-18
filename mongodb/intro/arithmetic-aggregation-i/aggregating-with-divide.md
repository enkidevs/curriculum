---
author: Stefan-Stojanovic

levels:
  - beginner
  
aspects:
  - new

type: normal

category: how to

---

# Aggregating With `$divide`

---
## Content

Division is performed in MongoDB by using the `$divide` operator. The syntax looks like this:

```javascript
{ 
  $divide:  
  [ 
    <expression1>, 
    <expression2> 
  ] 
}
```

Using the same documents as in the previous insights[1], we can use the `$divide` operator to calculate the initial power of each `pokemon` by dividing the `power` field by the `age` field (this way we can find the `power` of a pokémon when their age is one).

**Note:** The expressions are calculated like so `<expression1>` / `<expression2>`.

Example:
```javascript
db.pokemon.aggregate([
  {
    $project: {
      Name: 1,
      initialPower: {
        $divide: ["$Power", "$Age"]
      }
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
  "Name": "Pikachu", 
  "initialPower": 63.30769230769231 
},
{ 
  "_id": ObjectId(
    "5d9d8c3f0b24990f19398215"
  ),
  "Name": "Raichu", 
  "initialPower": 50.80769230769231 
}
```

**Note:** Just like with the `$add`, `$subtract` and `$multiply` operators, the expressions do not have to be existing fields, they can also be any literals.

---
## Practice

What operator would you use in MongoDB to perform division?

???

* `$divide`
* `$multiply`
* `$slice`
* `$partition`

---
## Revision

Which of these are not valid arithmetic operator?

???

* `$addition`
* `$multiply`
* `$divide`
* `$subtract`
* `$add`

---
## Footnotes

[1:Previous Documents]
Here are the documents used in the previous insight:
```javascript
{ 
  "Name": "Pikachu",
  "Power": 823,
  "Age": 13
},
{ 
  "Name": "Raichu", 
  "Power": 1321,
  "Age": 26
}
```