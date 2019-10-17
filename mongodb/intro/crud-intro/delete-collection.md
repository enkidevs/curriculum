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

# Delete a collection

---
## Content

To delete a collection in MongoDB, you need to use the `db.mycollection.drop()` method.

It's usually a good practice to first list all of the collections to make sure you don't delete the wrong one.

```javascript
show collections

// pokemon
// Pokemon
```

Unlike most SQL implementations, the collection names are case-sensitive in MongoDB. For this reason, the `pokemon` collection is different from the `Pokemon` collection, and you should always take extra care when dropping collections.

Here's how we can delete the 2nd collection called `Pokemon`:

```javascript
db.Pokemon.drop()
// true
```

**Note:** The only possible output for the `drop()` method is `true` or `false`, indicating if the deletion was successful or not.

---
## Practice

In MongoDB, the names of collections are ???. This means that the `enki` collection is ??? as the `Enki` collection.

* case-sensitive
* not the same
* case-insensitive
* the same

---
## Revision

Delete the collection named `Pokemon` from the current database:

```javascript
???.???.???
```

* `db`
* `Pokemon`
* `drop()`
* `pokemon`
* `deleteCollection()`
* `database`