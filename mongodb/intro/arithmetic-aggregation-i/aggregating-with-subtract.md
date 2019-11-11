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

# Aggregating With `$subtract`

---
## Content

Similarly to addition, subtraction can be achieved by using the `$subtract` operator. The syntax is:

```javascript
{ 
  $subtract:  
  [ 
    <expression1>, 
    <expression2> 
  ] 
}
```

Now, using the same documents as in the previous insight[1], we can use the `$subtract` operator to calculate how much stronger the `"Ultimate"` `power` is compared to the `"Basic"` one for each pokémon.

**Note:** The expressions are calculated like so: `<expression1>` - `<expression2>`.

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
  "_id": ObjectId(
    "5d9d8c330b24990f19398214"
  ),
  "Name": "Pikachu", 
  "ultimateMinusBasic": 399 
}
{ 
  "_id": ObjectId(
    "5d9d8c3f0b24990f19398215"
  ),
  "Name": "Raichu", 
  "ultimateMinusBasic": 496 
}
```

---
## Practice

To subtract one expression from another you have to use the ??? operator which can only take ??? expression(s).

* `$subtract`
* 2
* `$add`
* 1
* 3
* `$deduct`

---
## Footnotes

[1:Previous Documents]
Here are the documents that we have previously used:
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