---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - introduction
  - workout

type: normal

category: must-know

standards:
  javascript.database.1: 10
  javascript.database.2: 10
  javascript.database.3: 10
  javascript.database.4: 10


links:
  - '[link to official documentation](https://enki.com)'
---
# Create a database
---
## Content

In the last insight, we learned how to create a database, show the current one and show all the databases. Now we're gonna learn how to delete(drop) a database.

Last time, we created two similarly named databases; `Pokemon` and `pokemon`. Now we wanna delete the `Pokemon` one.

To do that, first, we need to switch to that database with the `use` command.

```javascript
use Pokemon

// switched to db pokemon
```

**Note:** When switching databases, look at any capitalization and spelling errors because the names of the databases are case sensitive.

Next, when we are sure we are on the correct database, we can use the `db.dropDatabase()` command to delete the current database.

```javascript
db.dropDatabase()
// { "dropped" : "Pokemon", "ok" : 1 }
```

---
## Practice

How do you delete (drop) the currently active database in MongoDB?

```javascript
???.???
```

* `db`
* `dropDatabase()`
* `delete`
* `db()`
* `database`
* `deleteDatabase`

---
## Revision

How do you delete a database named `pokemon`?

???

* Use the `use pokemon` command and then use the `db.dropDatabase()` command.
* Use the `delete` command.
* Use the `db.dropDatabase(pokemon)` command.
* Use the `db.delete()` method.
