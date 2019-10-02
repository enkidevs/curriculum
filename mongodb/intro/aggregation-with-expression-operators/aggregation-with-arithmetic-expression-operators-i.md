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

# Aggregation With Arithmetic Expressions Operators

---
## Content

There are a number of Arithmetic Expressions operators used in aggregation. 

These operators are used for mathematical calculations of numbers.

Some operators and explanations:
`$add` - adds 2 or more numbers together and returns a sum.
`$subtract` - subtracts the second number from the first and returns the difference (accepts exactly 2 expressions).

### $add

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

Let's say we have a `pokemon` collection where each pokémon has 3 power fields: `Basic` ,`Strong` and `Ultimate`. Each field has its own power "level" (number). We can use the `$add` operator to easily calculate the total strength of all 3 powers.

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
  "_id": 1,
  "Name": "Pikachu", 
  "totalPowerStrength": 812 
}
{ 
  "_id": 2, 
  "Name": "Raichu", 
  "totalPowerStrength": 1152 
}
```

In the example above, we have used the project stage to only display the `Name` field, along with a new field called `totalPowerStrength` where the added values will be stored and displayed.

### $subtract

Syntax:
```javascript
{ 
  $substract:  
  [ 
    <expression1>, 
    <expression2> 
  ] 
}
```

Using the same documents as above, we can use the `$subtract` operator to calculate how stronger the `Ultimate` `power` is compared to the `Basic` one for each pokémon.

**Note:** The expressions are calculated like so `<expression1>` - `<expression2>`.

Example:
```javascript
db.pokemon.aggregate([
  {
    $project: {
      Name: 1,
      ultimateMinusBasic: {
        $subtract: ["$Ultimate", "$Basic"]
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
  "ultimateMinusBasic": 399 
}
{ 
  "_id": 2, 
  "Name": "Raichu", 
  "ultimateMinusBasic": 496 
}
```

### $add and $subtract

Now that we know how to use each operator, we can also combine them.

Using the same documents and examples as above, let's calculate how stronger the `Ultimate` power is compared to the sum of the other two. 

Example:
```javascript
db.pokemon.aggregate([
  {
    $project: {
      Name: 1,
      ultimateMinusOtherTwo: {
        $subtract: [
          "$Ultimate",
          { $add: ["$Basic", "$Strong"] }
        ]
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
  "ultimateMinusOtherTwo": 188 
}
{ 
  "_id": 2, 
  "Name": "Raichu", 
  "ultimateMinusOtherTwo": 182 
}
```

**Note:** When adding or subtracting, we do not need to add existing fields for the computations, we can also add an existing field and a literal to perform the calculation.

Example of subtracting `7` from the `Basic` `power`:
```javascript
db.pokemon.aggregate([
  {
    $project: {
      Name: 1,
      basicMinusSeven: {
        $subtract: ["$Basic", 7]
      }
    }
  }
]);
```

---
## Practice

Match the explanation with the operator.

`$add` - ???
`$subtract` - ???

True or False:

When adding or subtracting expressions it is not possible to add a literal as an expression: ???

* is an Arithmetic operator used to add two or more expressions any number of expressions with a minimum of 2.
* is an Arithmetic operator used to subtract the 2nd expression from the first. (exactly 2 expressions can be used)
* False
* True
* is an Arithmetic operator used to add exactly 2 expressions.
* is an Arithmetic operator used to subtract any number of expressions
