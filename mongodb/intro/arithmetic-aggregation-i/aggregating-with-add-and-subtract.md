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

# Aggregating With `$and` and `$subtract`

---
## Content

Now that we know how to add and subtract in Mongo, let's see how we can use these operations together. 

Using the same documents from the previous insights[1], let's calculate how stronger the `"Ultimate"` power is compared to the sum of the other two `power`s. 

The query we would use is:
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

Which would output:
```javascript
{ 
  "_id": ObjectId(
    "5d9d8c330b24990f19398214"
  ),
  "Name": "Pikachu", 
  "ultimateMinusOtherTwo": 188 
}
{ 
  "_id": ObjectId(
    "5d9d8c3f0b24990f19398215"
  ),
  "Name": "Raichu", 
  "ultimateMinusOtherTwo": 182 
}
```

**Note:** When adding or subtracting, the expressions don't always have to be fields. We can also use literals. Here's an example in which we subtract 7 from the `"Basic" power`:

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

Can you use the `$add` and `$subtract` operators together in MongoDB?

???

The addition and subtraction operations in MongoDB can use ??? together with fields.

* Yes.
* literals
* No.
* Maybe.
* letters
* symbols

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