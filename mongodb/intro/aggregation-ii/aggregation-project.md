---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

aspects:
  - introduction
  - new
  - workout

type: normal

category: must-know

---

# Aggregation $project

---
## Content

In the aggregation pipeline, the `$project` stage is used to define which fields of the documents will go into the next aggregation stage. These fields can already exist or be completely new ones.

This stage can be used for:
- inclusion or exclusion of a field or fields
- adding new fields
- suppressing the `_id` field
- resetting values of existing fields

The syntax for `$project` is:
```javascript
{ $project: { <specification(s)> } }
```

The `<specification(s)>` can be:
```javascript
// to include
field: 1 or true
// to exclude
field: 0 or false
// to add a new field
// or reset an existing field
field: expression
// to exclude the _id field
_id: 0 or false
```

The `_id` field is included in the output of the aggregation by default. To exclude it, you must add `_id: 0` or `_id: false`.

For instance, let's say we wanted to aggregate the `pokemon` collection and want to only pass the `secondType` field through the next stage. We can do so like this:
```javascript
db.pokemon.aggregate([
  { $project: { secondType: 1 } }
])
```
Output:
```javascript
{
  "_id": ObjectId(
    "5d9d8ce00b24990f19398218"
  ),
  "secondType": "Poison"
},
{
  "_id": ObjectId(
    "5d9d8ce90b24990f19398219"
  ),
  "secondType": "Fire"
}
// ...
```
As you can see above, our aggregation was supposed to only aggregate documents which contain the specified field(`secondType`). However, since the `_id` field is included by default we have to add `_id: 0` to exclude it.
```javascript
db.pokemon.aggregate([
  { $project: { _id: 0, secondType: 1 } }
])
```
Output:
```javascript
{ "secondType": "Poison" }
{ "secondType": "Fire" }
// ...
```

---
## Practice

Which of these is a valid use case for `$project`?

???

* All four of them
* Include fields to pass to the next pipeline stage
* Exclude fields to pass to the next pipeline stage
* Add new fields
* Reset already existing fields

---
## Revision

Add the missing pieces of code to exclude the `_id` field and only include the `type` and `power` fields in the next aggregation pipeline stage.

```javascript
db.pokemon.???([
  {
    ???: { 
      ???: 0, 
      ???: 1, 
      power: ??? 
    }
  }
]);
```

* `aggregate`
* `$project`
* `_id`
* `type`
* `1`
* `-1`
* `$match`
* `$group`
