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

# Aggregating With `$round`

---
## Content

In case you don't want to truncate your values, Mongo let's you round them using the `$round` operator. The syntax looks like this:

```javascript
{ 
  $round:  
  [ 
    <number>, 
    <place>
  ] 
}
```

We're going to use the same documents as in the previous insight[1], and first we want to round with no decimal points. To do this we would write:

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


---
## Practice

To round numerical values in Mongo you have to use the ??? operator.

* `$round`
* `$trunc`
* `$rounding`
* `$truncating`

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