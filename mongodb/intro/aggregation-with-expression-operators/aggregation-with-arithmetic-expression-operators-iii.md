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

# Aggregation With Arithmetic Operators III

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

### **`$round`**

The syntax for `$round` is the same as for `$trunc`. 

Syntax:
```javascript
{ 
  $round:  
  [ 
    <number>, 
    <place>
  ] 
}
```
They operate similarly, but `$round` is used to round the number up or down to the desired decimal point.

Let's use the same document as above:
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

Example without decimal points:
```javascript
db.pokemon.aggregate([
  {
    $project: {
      roundedPower: {
        $round: ["$initialPower"]
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
  "roundedPower": 63
}
{   
  "_id": ObjectId(
    "5d9d8c3f0b24990f19398215"
  ),
  "roundedPower": 51
}
```

**Note:** `$round: ["$initialPower"]` = `$round: ["$initialPower", 0]` 
If we wanted to round with any decimal point, we would write it as `$round: ["$initialPower", NUMBER_HERE]` 

Example with `$round: ["$initialPower", 2]`:
```javascript
{   
  "_id": ObjectId(
    "5d9d8c3f0b24990f19398215"
  ),
  "roundedPower": 50.81
}
{   
  "_id": ObjectId(
    "5d9d8c330b24990f19398214"
  ), 
  "roundedPower": 63.31
}
```

### **`$round` and `$trunc`**

In the previous examples, we have used a positive integer when truncating or rounding: `$trunc: ["field", 1]`. Using the same documents as above, we will now truncate using a negative number `$trunc: ["field", -1]`. In this case, instead of truncating to the right of the decimal, we are truncating to the left of the decimal.

Example with negative input:
```javascript
// Aggregation
db.pokemon.aggregate([
  {
    $project: {
      truncatedPower: {
        $trunc: ["$initialPower", -1]
      }
    }
  }
]);

// Numbers used for input
638.30769230769231 
519.80769230769231 

// Output
{   
  "_id": ObjectId(
    "5d9d8c3f0b24990f19398215"
  ),
  "truncatedPower": 510
}
{  
  "_id": ObjectId(
    "5d9d8c330b24990f19398214"
  ), 
  "truncatedPower": 630
}
```

As you can see in the example above, the value is truncated to the left of the decimal. Because we are truncating to `-1`, we are replacing digits (starting from the decimal point and going to the left) with `0`s. If we would've used `-2` as our decimal place, the results would be `500` and `600`.

If we used `-3` as our decimal place (which is equal to the number of digits to the left of the decimal), the results would be `0` for both documents.

**Note:** The negative input works the same for both `$trunc` and `$round`.

---
## Practice

Match the explanation with the operator.

`$round` - ???
`$trunc` - ???

* is an arithmetic operator used to round a positive or negative number up or down to the desired decimal point.
* is an arithmetic operator used to truncate a positive or negative number to the desired decimal point.
* is an arithmetic operator only used for rounding positive integers. 
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
