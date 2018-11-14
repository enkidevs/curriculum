---
author: stefan.stojanovic

levels:
  - beginner

aspects:
  - new

type: normal
    
category: must-know

standards: 
  javascript.crud.13: 10
  javascript.crud.14: 10

links:
    - '[LINK DESCRIPTION](http://www.example.com){code}'

---
# delete a collection
---
## Content

To delete a collection in MongoDB, you need to use the `db.collection_name.drop()` method.

First, it's best to display all collections to make sure you don't delete the wrong one.
```javascript
show collections

// pokemon
// Pokemon
```

Now we want to delete the 2nd collection `Pokemon`.
```javascript
db.Pokemon.drop()
// true
```

**Note:** The only possible output for the `.drop()` method is `true` or `false`.

---
## Practice

Delete the collection named `Pokemon` from the current database
```
???.???.???
```

* `db`
* `Pokemon`
* `drop()`
* `pokemon`
* `deleteCollection()`
* `database`

---
## Revision

Delete the collection named `players` from the current database.

```javascript
db.???.???
// true
```

* `players`
* `drop()`
* `Players`
* `delete()`