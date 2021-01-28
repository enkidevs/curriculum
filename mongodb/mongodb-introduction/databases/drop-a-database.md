---
author: Stefan-Stojanovic
type: normal
category: must-know
links:
  - >-
    [Official
    Documentation](https://docs.mongodb.com/manual/reference/method/db.dropDatabase/){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Delete a database


---

## Content

It's time to learn how to delete (drop) a database.

Last time, we created two similarly named databases: `Pokemon` and `pokemon`. Let's delete the one named `Pokemon`. 

To do that, first, we need to switch to that database with the `use` command:

```javascript
use Pokemon

// switched to db Pokemon
```

> ❗ When switching databases, look at any capitalization and spelling errors because the names of the databases are case sensitive.

When we are sure we are on the correct database, we can use the `db.dropDatabase()` command to delete the current database:

```javascript
db.dropDatabase()
// { "dropped": "Pokemon", "ok": 1 }
```


---

## Practice

How do you delete (drop) the currently active database in MongoDB?

```javascript
???.???
```

- `db`
- `dropDatabase()`
- `delete`
- `db()`
- `database`
- `deleteDatabase`


---

## Revision

To delete a database named `pokemon`, you have to use the ??? command followed by using the ??? command.

- `use pokemon`
- `db.dropDatabase()`
- `delete`
- `db.dropDatabase(pokemon)`
- `db.delete(pokemon)`
