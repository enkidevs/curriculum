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

# Aggregation With Arithmetic Operators VI

---
## Content

`$trunc` - Used to truncate an expression to a whole number or the desired decimal place.
`$round` - Used to round an expression to a whole number or the desired decimal place.

### **`$trunc`**

Syntax:
```javascript
{
  $trunc: [<number>, <place>];
}
```

In the previous insight, we used the `$divide` operator to calculate the `initialPower` for each pokémon.

Output documents from previous insight:
```javascript
{ 
  "_id": ObjectId(
    "5d9d8c330b24990f19398214"
  ),
  "Name": "Pikachu", 
  "initialPower": 63.30769230769231 
}
{ 
  "_id": ObjectId(
    "5d9d8c3f0b24990f19398215"
  ),
  "Name": "Raichu", 
  "initialPower": 50.80769230769231 
}
```

Now, let's say we have saved these `key: value` pairs with the `insert()` method. We want to truncate them to a value with fewer decimals.

Example:
```javascript
db.pokemon.aggregate([
  {
    $project: {
      truncatedPower: {
        $trunc: ["$initialPower", 1]
      }
    }
  }
]);
```

Output:
```javascript
{
  "_id": ObjectId(
    "5d9d8c3f0b24990f19398215"
  ),
  "truncatedPower": 50.8
},
{
  "_id": ObjectId(
    "5d9d8c330b24990f19398214"
  ),
  "truncatedPower": 63.3
}
```
**Note:** The `,1` in `$trunc: ["$initialPower", 1]` represents the decimal place and it means that the value will be truncate to 1 decimal point.

If we wanted to truncate without any decimal points, we would write it as `$trunc: ["$initialPower"]`  or `$trunc: ["$initialPower", 0]`.

Output:
```javascript
{   
  "_id": ObjectId(
    "5d9d8c3f0b24990f19398215"
  ),
  "truncatedPower": 50
}
{   
  "_id": ObjectId(
    "5d9d8c330b24990f19398214"
  ), 
  "truncatedPower": 63 
}
```

Similarly, if we wanted to truncate to any different decimal point, we would just add the corresponding number in the aggregation.


---
## Practice

Match the explanation with the operator.

`$trunc` - ???

* is an arithmetic operator used to truncate a positive or negative number to the desired decimal point.
* is an arithmetic operator only used to truncate a positive integer.

---
## Revision

Fill in the missing code to successfully truncate the `initialPower` field to 0 decimal points.

```javascript
db.pokemon.aggregate([
  {
    $project: {
      truncatedPower: {
        ???: [???]
      }
    }
  }
]);
```

* `$trunc`
* `"$initialPower"`
* `$truncate `
* `"$initialPower", 2"`
