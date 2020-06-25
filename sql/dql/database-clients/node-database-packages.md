---
author: nickdaminov

levels:
  - basic
  - medium

type: normal

category: feature

inAlgoPool: false

standards:
  sql.connect-client.0: 10
  sql.connect-client.1: 10

tags:
  - node
  - javascript
  - implementation
  - database packages

links:
  - '[Node database packages](https://www.npmjs.com/browse/keyword/database){website}'
  - '[pg node package](https://www.npmjs.com/package/pg){website}'
  - '[pg video tutorial](https://www.youtube.com/watch?v=hzixG7gFTxY){website}'

aspects:
  - workout

---

# Node Database Packages

---
## Content

Node is another popular platform and it uses JavaScript. As there are lots of packages available for it we will take a look at some of the database packages:
 - mongoose (for MongoDB)
 - sqlite3
 - pg (for postgres)

We will create a node app and use a `pg` package in order to connect to a *Pokemon* database and output the results to the console:
```js
// require the correct package
const pg = require("pg");
// use a correct connection string
// (here it is split with newlines
// in order to fit into the screen)
const conString =
  "pg://ashketchum:
  iwannabetheverybest@
  aws-us-east-1-portal.29.dblayer.com:
  23336/
  pokemon";
// create a new Postgres client
const client = new pg.Client(conString);
client.connect((err)=> {
  if (!err) {
    client.query(
      'SELECT * FROM pokemon_color',
      (err, result) => {
      // perform the correct action
      // upon the query result
      if (err) {
        console.log(err);
      } else {
        console.log(result.rows);
      }
    });
  }
});
```

The result of the following code should be similar to:

```js
[ anonymous { id: '1', name: 'black' },
  anonymous { id: '2', name: 'blue' },
  anonymous { id: '3', name: 'brown' },
  anonymous { id: '4', name: 'gray' },
  anonymous { id: '5', name: 'green' },
  anonymous { id: '6', name: 'pink' },
  anonymous { id: '7', name: 'purple' },
  anonymous { id: '8', name: 'red' },
  anonymous { id: '9', name: 'white' },
  anonymous { id: '10', name: 'yellow' } ]
```

---
## Practice

Considering `var conString ="pg://ashketchum:iwannabetheverybest@aws-us-east-1-portal.29.dblayer.com:23336/pokemon";`, form a connection string:

???://???:???
@???:???/???


* pg
* username
* password
* URLaddress
* port
* databaseName

---
## Revision

What package is used in order to connect to a Postgres database in nodeJS?

???

* pg
* mongoose
* sqlite3
 
 
