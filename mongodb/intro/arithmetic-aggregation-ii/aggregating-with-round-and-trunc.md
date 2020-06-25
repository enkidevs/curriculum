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

# Aggregating With `$round` and `$trunc`

---
## Content

In the previous insights, we have used a positive integer when truncating or rounding: `$trunc: ["field", 1]`. Using the same documents[1], we will now truncate using a negative number for the decimal place `$trunc: ["field", -1]`. 

In this case, instead of truncating to the right of the decimal, we are truncating to the left of the decimal. So, if we were to write this command:

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
```

We'd get the following documents as output:
```js
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
## Footnotes

[1:Previous Documents]
Here are the documents we used in the previous insights:
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