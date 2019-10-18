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

# Aggregation With Arithmetic Expressions Operators I

---
## Content

There are a number of arithmetic expressions operators used in aggregation. 

These operators are used for numerical calculations.

Some operators and explanations:

`$add` - adds 2 or more numbers together and returns a sum.
`$subtract` - subtracts the second number from the first and returns the difference (accepts exactly 2 expressions).

### **`$add`**

Syntax:
```javascript
{ 
  $add:  
  [ 
    <expression1>, 
    <expression2>, 
    ... 
  ] 
}
```

Let's say we have a `pokemon` collection where each pokémon has 3 power fields: `"Basic"` ,`"Strong"` and `"Ultimate"`. Each field has its own power "level" (number). We can use the `$add` operator to calculate the total strength of all 3 powers.

Example documents:
```javascript
{ 
  "Name": "Pikachu",
  "Basic": 101,
  "Strong": 211,
  "Ultimate": 500 
}
{ 
  "Name": "Raichu", 
  "Basic": 171,
  "Strong": 314,
  "Ultimate": 667 
}
```

Example aggregation with `$add`:
```javascript
db.pokemon.aggregate([
  {
    $project: {
      Name: 1,
      totalPowerStrength: {
        $add: [
          "$Basic",
          "$Strong",
          "$Ultimate"
        ]
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
  "totalPowerStrength": 812 
}
{ 
  "_id": ObjectId(
    "5d9d8c3f0b24990f19398215"
  ),
  "Name": "Raichu", 
  "totalPowerStrength": 1152 
}
```

In the example above, we have used the project stage to only display the `Name` field, along with a new field called `totalPowerStrength` where the added values will be stored and displayed.

---
## Practice

Match the correct explanation with the given operator.

`$add` - ???

* is an arithmetic operator used to add two or more expressions, with a minimum of 2.
* is an arithmetic operator used to add exactly 2 expressions.
