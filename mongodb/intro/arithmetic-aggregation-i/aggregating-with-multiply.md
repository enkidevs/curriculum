---
author: Stefan-Stojanovic

levels:
  - beginner
  
aspects:
  - new

type: normal

category: how to

---

# Aggregating With `$multiply`

---
## Content

Multiplication is achieved in Mongo by using the `$multiply` operator. The syntax looks like this:

```javascript
{ 
  $multiply:  
  [ 
    <expression1>, 
    <expression2>, 
    ... 
  ] 
}
```

Let's say we have a `pokemon` collection where each pokémon has a base `power` field and an `age` field. Here are some example documents:

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

To get the actual power of each pokémon, we need to calculate the product of the `power` and `age` fields (the power of each pokémon increases with its age). Using the `$multiply` operator, we would write:
```javascript
db.pokemon.aggregate([
  {
    $project: {
      Name: 1,
      actualPower: {
        $multiply: ["$Power", "$Age"]
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
  "actualPower": 812 
}
{ 
  "_id": ObjectId(
    "5d9d8c3f0b24990f19398215"
  ),
  "Name": "Raichu", 
  "actualPower": 1152 
}
```

In the example above, we have used the project stage to only display the `Name` field, along with a new field called `actualPower`. The `actualPower` field is where we stored the product of our two expressions.

Although we have only used two expressions in our example, the `$multiply` operator can take in any number of expressions, with a minimum of two.

**Note:** Just like with the `$add` and `$subtract` operators, the expressions do not have to be existing fields, they can also be any literals.

---
## Practice

In MongoDB, you would use the ??? operator to perform multiplication.

* `$multiply`
* `$pow`
* `$times`
* `$*`
