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

# Create a database

---
## Content

In MongoDB, the `use <db>` command is used to either create a new database or switch to an existing one.

**Note:** If you do not create a new database, the default `test` database will be used.

```javascript
use pokemon
// switched to db pokemon

use digimon
// switched to db digimon
```

It is important to know that the names of databases are case sensitive. This means that if you want to switch from the current database to the `pokemon` one, you shouldn't write `use Pokemon` because that would create a new database instead of switching to your desired one.

```javascript
use Pokemon
// switched to db Pokemon
```

To check which database you're currently working on, you can use the `db` command.

```javascript
db
// Pokemon
```

To list all the databases, you need to use the `show dbs` command.

**Note:** Empty databases won't show with the `show dbs` command.

```javascript
show dbs

// admin         0.100GB
// config        0.023GB
// local         2.002GB
```

On the other hand, if all three databases we created above had documents inside them, running `show dbs` would give us something like:

```javascript
show dbs

// admin         0.100GB
// config        0.023GB
// local         2.002GB
// pokemon       0.001GB
// digimon       0.001GB
// Pokemon       0.001GB
```

---
## Practice

How do you create a database called `Pokemon` in MongoDB?

```javascript
??? ???
```

* `use`
* `Pokemon`
* `create`
* `new db`
* `db`
* `database`
* `new`
* `pokemon`

---
## Revision

How do you check which database is currently active in MongoDB?

???

How do you list all databases in MongoDB?

???

* `db`
* `show dbs`
* `check database`
* `db.check`
* `database`
* `dbs`
* `list dbs`
* `db.showAll`
