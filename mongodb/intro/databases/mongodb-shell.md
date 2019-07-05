---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - introduction

type: normal

category: must-know

standards:
  javascript.shell.1: 10
  javascript.shell.2: 10
  javascript.shell.3: 10

links:

---
# mongodb-shell
---
## Content

Before creating or accessing a database in MongoDB, you should first start the MongoDB shell. The MongoDB shell is an interactive JavaScript shell.

To start it, you need to use the `mongo` command.

```shell
mongo
```

To see ways you can use the `mongo` shell command, pass in the `help` flag:

```shell
mongo --help
```

After starting the shell, a series of commands will be available to you.

You can CRUD (Create, Read, Update and Delete) a database, CRUD collections and documents, and more.

To see a list of those commands, use the `help` command:

```shell
help
```

To see all existing non-empty databases do:

```shell
show dbs
```

You can use the `help()` function to list all the available commands for a particular database:

```javascript
db.help()
```

or a particular collection:

```javascript
db.mycollection.help()
```

or a particular collection operation:

```javascript
db.mycollection.find().help()
```

To exit the shell, you can use the `exit` command.

```shell
exit
```

---
## Practice

How do you access the MongoDB interactive JavaScript shell?

???

How do you exit/quit the MongoDB interactive JavaScript shell?

???

* by using the `mongo` command
* by using the `exit`
* by using the `mongodb` command
* by using the `shell` command
* by using the `leave` command
