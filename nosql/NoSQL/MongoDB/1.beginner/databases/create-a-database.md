---
author: stefan.stojanovic

levels:
  - beginner
 
aspects:
  - introduction

type: normal

category: must-know

standards: 
  javascript.database.0: 10
  javascript.database.1: 10
  javascript.database.2: 10
  javascript.database.3: 10

links:

---
# Create a database
---
## Content

In MongoDB the `use NAME_OF_DATABASE` command is used to either create a new database or switch to an existing one.
**Note:** If you do not create a new database, the default `test` database will be used.

```javascript
use pokemon
//switched to db pokemon

use digimon
//switched to db digimon
```
**Note:** Be careful when switching databases because the names of databases are case sensitive. 

This means if you want to switch from the current database to the `pokemon` one, you shouldn't write  `use Pokemon` because that would create a new database instead of switching to your desired one.

```javascript
use Pokemon
//switched to db Pokemon 
```

To check which database you're currently working on, you can use the `db` command.

```javascript
db
//Pokemon
```

To list all the databases you need to use the `show dbs` command.

**Note:** If there is no document in the database you created it won't show with the `show dbs` command.

```javascript
show dbs

admin         0.000GB
config        0.000GB
local         0.000GB
```
On the other hand, if all three databases we created above had documents inside them it would look like this:

```javascript
show dbs

admin         0.000GB
config        0.000GB
local         0.000GB
pokemon       0.000GB
digimon       0.000GB
Pokemon       0.000GB
```
---
## Practice

How do you create a database in MongoDB?

```javascript
??? ???
```

* `use`
* `NAME_OF_DATABASE`
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
