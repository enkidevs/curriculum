# Node Database Packages
author: Nick Daminov

levels:

  - basic

  - medium

type: normal

category: feature

inAlgoPool: false

standards:
  sql.connect-client: 10

links:

  - '[Node database packages](https://www.npmjs.com/browse/keyword/database)'
  - '[pg node package](https://www.npmjs.com/package/pg)'
  - '[pg video tutorial](https://www.youtube.com/watch?v=hzixG7gFTxY)'

---
## Content

Node is another popular platform (available as a course for premium users) which uses Java Script. As there are lots of packages available for it we will take a look at some of the database packages:
 - mongoose (for MongoDB)
 - sqlite3
 - pg (for postgres)

We will create a node app and use a `pg` package in order to connect to a *Pokemon* database and output the results to the console:
```
//require the correct package
var pg = require("pg");
//use a correct connection string
//(here it is split with newlines
//in order to fit into the screen)
var conString =
  "pg://ashketchum:
  iwannabetheverybest@
  aws-us-east-1-portal.29.dblayer.com:
  23336/
  pokemon";
//create a new Postgres client
var client = new pg.Client(conString);
client.connect((err)=> {
  if(!err){
    client.query(
      'SELECT * FROM pokemon_color',
      (err, result)=> {
      //perform the correct action
      //upon the query result
      if(err){
        console.log(err);
      } else {
        console.log(result.rows);
      }
    });
  }
});
```
The result of the following code should be similar to:
```
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

**NOTE: Bookmark this insight, and try connecting to the database on your own!**

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
