---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - introduction
  - workout

type: normal

category: must-know

---

# Read documents

---
## Content

To retrieve a document from a specific collection in MongoDB, you need to use the `db.mycollection.find()` method.

```javascript
db.pokemon.find()
```

Result:

```javascript
{
  "_id": 1,
  "name": "Pikachu",
  "type": "Electric"
}
```

Using the `find()` method without any parameters will retrieve all the documents from the selected collection.

**Note** that `find({})` and `find()` both work the same way.

You can also add different parameters to `find()` for a more specific search.

Let's say we have over 100 pokémon in the `pokemon` database and want to find only the ones that have an `Electric` type.

We would do that like so:

```javascript
db.pokemon.find({ type: "Electric" })
```

Result:

```javascript
{
  "_id": 1,
  "name": "Pikachu",
  "type": "Electric"
}
{
  "_id": 26,
  "name": "Raichu",
  "type": "Electric"
}
{
  "_id": 100,
  "name": "Voltorb",
  "type": "Electric"
}
{
  "_id": 101,
  "name": "Electrode",
  "type": "Electric"
}
```

You can limit the number of results by adding the `limit(number)` method. If the limit is not specified, the default limit is `20`.

```javascript
db.pokemon
  .find({ type: "Electric" })
  .limit(2)
```

Result:

```javascript
{
  "_id": 1,
  "name": "Pikachu",
  "type": "Electric"
}
{
  "_id": 26,
  "name": "Raichu",
  "type": "Electric"
}
```

You can sort your result with the `sort({})` method in either ascending or descending order by any field.

The syntax is `sort({ field_name: 1 or -1 })` where:
- `1` is ascending.
- `-1` is descending.

If we wanted to get the top 2 pokémon sorted in descending order by `_id`, we can run.

```javascript
db.pokemon
  .find({ type: "Electric" })
  .limit(2)
  .sort({ _id: -1 })
```

Result:

```javascript
{
  "_id": 26,
  "name": "Raichu",
  "type": "Electric"
}
{
  "_id": 1,
  "name": "Pikachu",
  "type": "Electric"
}
```

---
## Practice

List all documents in the `pokemon` collection.

```javascript
???.???.???
```

* `db`
* `pokemon`
* `find()`
* `database`
* `Pokemon`
* `findAll()`
* `find([])`

---
## Revision

Which method is used to list all documents located within a single collection?

???

Which piece of code lists only the first `3` documents of the `pokemon` collection?

???

Which method is used to make the output of the query sorted by a selected field?

???

* `find()`
* `db.pokemon.find().limit(3)`
* `sort()`
* `order()`
* `locate()`
* `list()`
* `db.Pokemon.find().limit(3)`
* `db.pokemon.find().first(3)`
