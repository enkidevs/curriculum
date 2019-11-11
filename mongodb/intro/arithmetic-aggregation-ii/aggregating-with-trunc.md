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

# Aggregating with `$trunc`

---
## Content

In a previous insight, we used the `$divide` operator to calculate the `initialPower` for each pokémon. The output was:
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

Notice how the values for `"initialPower"` have many numbers after the decimal point. When presenting your numbers, you might want to make them more readable. One way to do this in MongoDB is to use the `$trunc` operator. This operator is used to truncate to a whole number or to a desired decimal place, and it has the following syntax:

```javascript
{
  $trunc: [<number>, <place>];
}
```

Now, let's say we have saved these `key: value` pairs with the `insert()` method. We want to truncate them to a value with only one decimal. To do this we would write:

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

To truncate numbers in MongoDB you have to use the ??? operator.

* `$trunc`
* `$reduce`
* `$truncate`
* `$makeSmaller`

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