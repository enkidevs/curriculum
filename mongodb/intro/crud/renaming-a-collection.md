---
author: Stefan-Stojanovic

levels:
  - beginner
  
aspects:
  - introduction

type: normal

category: must-know

---

# Renaming a collection

---
## Content

To rename a collection in MongoDB, we need to use the `renameCollection()`method. The syntax is:
```javascript
db.collection_name.renameCollection(
  "<string>"
)
```

Let's say we decided to rename a collection called "Pokemon" to "cartoonCharacters". We can do it like so:
```javascript
db.Pokemon.renameCollection(
  "cartoonCharacters"
)
```

Output:
```javascript
{ "ok": 1 }
```

**Note:** To avoid any errors, do not try to rename a collection while there is a query running on that collection. Also, capitalization matters. If you have many collections, make sure you don't misspell the collection name.

```javascript
db.pokemon
// is not the same as
db.Pokemon
```

---
## Practice

Which code successfully changes the name of the collection `Pokemon` to `pokemon`:

???

* `db.Pokemon.renameCollection("pokemon")`
* `db.Pokemon.renameCollection("Pokemon")`
* `db.Pokemon.rename("POKEMON")`
* `db.Pokemon.renameCollectionTo("pokemon")`
