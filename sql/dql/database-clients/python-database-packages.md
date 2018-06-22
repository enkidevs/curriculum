---
author: Nick Daminov

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


  - workout

  - python

  - implementation

  - database packages


links:

  - '[Psycopg2 package](http://initd.org/psycopg/){website}'
  - '[SQLAlchemy package](http://www.sqlalchemy.org/){website}'
  - '[Psycopg documentation](http://initd.org/psycopg/docs/index.html){website}'
  - '[Psycopg start guide](http://initd.org/psycopg/docs/usage.html){website}'
  - '[Using Python to query Postgres video](https://www.youtube.com/watch?v=8gd1DlXwzlY){website}'


aspects:
  - workout


---

# Python Database Packages

---
## Content

**Python** has many libraries which implement various functionalities. Some of those libraries allow the user to operate on databases, these libraries are also called *database drivers*. The examples of such libraries:
 - Psycopg
 - db.py (requires Psycopg installed)
 - SQLAlchemy

As an example we will take *Psycopg on MacOS X*, you can run the following commands straight from the command line or from the python scripts.
After installation of the *Psycopg* package we can run python by typing `python` in the terminal.

Now let's connect to the Pokemon database:
```python
# Import the library
>>> import psycopg2
# Connect to the database
>>> conn = psycopg2.connect("
  dbname=pokemon
  user=ashketchum
  password=iwannabetheverybest
  host=aws-us-east-1-portal.29.dblayer.com
  port=23336")
```

In order to execute a query we must use the cursor class:
```python
# Creating a cursor instance
>>> cur = conn.cursor()                    
# Execute a command
>>> cur.execute("SELECT *
  FROM pokemon_color;")
>>> cur.fetchall()
```

This will should list all the colors in an array of pairs.

**NOTE: you are granted a read-only access so executing writing commands will have no effect.**

As `cur` is now a Python list object we can iterate through the query result simply by:
```python
>>> for row in cur:
...     print (row)
...
```

Which should print:
```python
(1, 'black')
(2, 'blue')
(3, 'brown')
(4, 'gray')
(5, 'green')
(6, 'pink')
(7, 'purple')
(8, 'red')
(9, 'white')
(10, 'yellow')
```

**NOTE: Bookmark this insight, and try connecting to the database on your own!**

---
## Practice

If we consider `psycopg2` library what's the correct order of connecting and then using it?

1 - ???
2 - ???
3 - ???
4 - ???

* import psycopg2
* establish a connection with the database
* initialize a cursor
* execute a query with the cursor

---
## Revision

How can you connect to a database with Python?
???

* By using dedicated libraries
* Python provides an inbuilt db functionality
 
 
