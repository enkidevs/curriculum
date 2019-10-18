---
author: Stefan-Stojanovic

levels:
  - beginner
  
aspects:
  - new

type: normal

category: how to

---

# Aggregation With Arithmetic Expression Operators IV

---
## Content

In the previous insight, we learned how to aggregate using the `$add` and `$subtract` arithmetic operators. Now, we are going to discuss the `$divide` and `$multiply` operators.

`$divide` - divides the first expression by the second one and returns the result (accepts exactly 2 expressions).
`$multiply` - multiplies 2 or more expressions and returns the product.

### **`$multiply`**

Syntax:
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

Let's say we have a `pokemon` collection where each pokémon has a base `power` field and an `age` field. To get the actual power of each pokémon we need to calculate the product of the `power` and `age` fields (the power of each pokémon increases with its age).

Example documents:
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

Example aggregation with `$multiply`:
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

In the example above, we have used the project stage to only display the `Name` field, along with a new field called `actualPower`. The `actualPower` field is where we stored the product of our 2 expressions.

**Note:** In the example, for demonstration purposes we have used only 2 expressions. However, the `$multiply` operator can take in any number of expressions, with a minimum of 2.

**Note:** Just like with the `$add` and `$subtract` operators, the expressions do not have to be existing fields, they can also be any literals.

---
## Practice

Match the explanation with the operator.

`$multiply` - ???
`$divide` - ???

* is an arithmetic operator used to multiply any number of expressions with a minimum of 2.
* is an arithmetic operator used to multiply exactly 2 expressions.

---
## Revision

Which of these are not valid arithmetic Expression Operators?

???

* `$power` and `$squareRoot`
* `$multiply` and `$divide`
* `$subtract` and `$add`
* `$round` and `$trunc`
