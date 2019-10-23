---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - introduction

type: normal

category: must-know

---

# MongoDB Shell

---
## Content

Before creating or accessing a database in MongoDB, you should first start the MongoDB shell. The MongoDB shell is an interactive JavaScript shell. To start it, you need to use the `mongo` command.

```shell
mongo
```

To see ways you can use the `mongo` shell command, pass in the `--help` flag:

```shell
mongo --help
```

After starting the shell, a series of commands will be available to you. You can **CRUD** (Create, Read, Update and Delete) a database, **CRUD** collections and documents, and more. To see a list of those commands, use the `help` command:

```shell
help

#db.help()         help on db methods
#db.mycoll.help()  help on collection...
#...
```

To see all existing non-empty databases do:

```shell
show dbs

#admin  0.000GB
#config 0.000GB
#local  0.000GB
```

Note that because we haven't created any databases yet, we are only seeing the ones that are created by default (`admin`, `config`, and `local`).

You can use the `help()` function to list all the available commands for a particular database:

```shell
db.help()

#DB methods:
#  db.adminCommand(nameOrDocument) ...
#  ...
```

Or for a particular collection:

```shell
db.mycollection.help()

#DBCollection help:
#  db.mycollection.find.help() ...
#  ...
```

Or for a particular collection operation:

```shell
db.mycollection.find().help()

#find(<predicate>, <projection>) modifiers
#  .sort({...})
#  .limit(<n>)
#  ...
```

To exit the shell, you can use the `exit` command.

```shell
exit

#bye
```

---
## Practice

How do you access the MongoDB interactive JavaScript shell?

???

How do you exit/quit the MongoDB interactive JavaScript shell?

???

* by using the `mongo` command
* by using the `exit` command
* by using the `mongodb` command
* by using the `shell` command
* by using the `leave` command
