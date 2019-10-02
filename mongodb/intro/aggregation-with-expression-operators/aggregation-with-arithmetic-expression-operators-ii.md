---
author: Stefan-Stojanovic

levels:
  - beginner
  
aspects:
  - new

type: normal

category: how to
      
links:

---
# Aggregation With Arithmetic Expression Operators 2
---
## Content

In the previous insight, we learned how to aggregate using the `$add` and `$subtract` arithmetic operators. Now, we are going to discuss the `$divide` and `$multiply` operators.

`$divide` - divides the first expression by the second one and returns the result (accepts exactly 2 expressions).
`$multiply` - multiplies 2 or more expressions and returns the product.

### $multiply

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

Let's say we have a `pokemon` collection where each pokémon has a base `power` field and an `age` field. To get the actual power of each pokémon we need to calculate the product of the `power` and `age` fields (the power of each pokemon increases with its age).

Example documents:
```javascript
{ 
  "Name": "Pikatchu",
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
  "_id": 1,
  "Name": "Pikachu", 
  "actualPower": 812 
}
{ 
  "_id": 2, 
  "Name": "Raichu", 
  "actualPower": 1152 
}
```

In the example above, we have used the project stage to only display the `Name` field, along with a new field called `actualPower`. The `actualPower` field is where we stored the product of our 2 expressions.

**Note:** In the example, for demonstration purposes we have used only 2 expressions. However, the `$multiply` operator can take in any number of expressions, with a minimum of 2.

### $divide

Syntax:
```javascript
{ 
  $divide:  
  [ 
    <expression1>, 
    <expression2> 
  ] 
}
```

Using the same documents as above, we can use the `$divide` operator to calculate the initial power of each `pokemon` by dividing the `power` field by the `age` field (this way we can find the `power` of a pokemon when their age is one).

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
  "_id": 1,
  "Name": "Pikachu", 
  "initialPower": 63.30769230769231 
}
{ 
  "_id": 2, 
  "Name": "Raichu", 
  "initialPower": 50.80769230769231 
}
```

**Note:** Just like with the `$add` and `$subtract` operators, the expressions do not have to be existing fields, they can also be any literals.

---
## Practice

Match the explanation with the operator.

`$multiply` - ???
`$divide` - ???

* is an Arithmetic operator used to multiply any number of expressions with a minimum of 2.
* is an Arithmetic operator used to divide the 2nd expression to the first (exactly 2 expressions can be used).
* is an Arithmetic operator used to multiply exactly 2 expressions.
* is an Arithmetic operator used to divide any number of expressions.

---
## Revision

Which of these are not valid Arithmetic Expression Operators?

???

* `$power` and `$squareRoot`
* `$multiply` and `$divide`
* `$subtract` and `$add`
* `$round` and `$trunc`
