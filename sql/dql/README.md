name: Querying Data

description: Get information from SQL RDBMS systems, where most of the world's data is stored.

core: true

sections:
  '0':
    - what-is-sql
    - using-select
    - building-queries
    - special-operators
  '1':
    - aggregate-queries
    - joins
    - database-clients

standards:
  connect-client:
    name: Connect a database client to a database server
    description: This standard deals with the skill of establishing a connection to a database server.
    objectives:
      0: Connect any database client to a database server on a local host
      1: Connect any database client to a database server on a remote host
      2: Break down connection URLs into their component elements (protocol, hostname, credentials, port, database name, etc)
      3: Assemble connection URLs from component elements
  read-single-table:
    name: Write queries to read data from single tables
    description: This standard specifically has to do with writing a query to read data from one table.
    objectives:
      0: Use the SELECT command to get data from a table
      1: Use the WHERE clause to filter rows of data from a table
      2: Filter the columns returned by a SELECT command
      3: Use the ORDER BY command to sort a result set by the value of a column, or multiple columns
  read-multiple-tables:
    name: Write queries to read data from multiple related tables
    description: This standard specifically deals with the skill of JOINing multiple tables together to produce a set of data. This means that the data model for this assessment needs to have at least one join table that relates two different tables together, and one that relates a table to itself. A good example model is relating Users to other Users (as in friendships), and Users to Items they've purchased through Orders (a join table).
    objectives:
      0: Use INNER, LEFT, RIGHT, OUTER, and JOIN to relate data across multiple tables
      1: Write a query to relate two tables using a join table
      2: Write a query to relate a table to itself using a join table
  aggregate-single-table:
    name: Write queries to aggregate data from a single table
    description: This standard has to do with the skill of data aggregation from a single table. 1 or more columns of data, filtered or not, are reduced to a single value, from a single set.
    objectives:
      0: Use the COUNT, SUM, AVG functions to reduce a set to a single value
      1: Use the MAX, MIN functions to search for the boundaries of set of data
      2: Combine multiple columns' values in the aggregation of a set of data
      3: Use GROUP BY to aggregate data in subsets of data
  aggregate-multiple-tables:
    name: Write queries to aggregate data from multiple related tables
    description: This standard deals specifically with the aggregation of data across multiple joined sets of data.
    objectives:
      0: Aggregate data using the GROUP BY statement and the COUNT, SUM, and AVG to collate information across related tables
      1: Use MAX and MIN to look at the boundaries of a subset of data that is distributed across multiple tables
      2: Use columns from related tables to aggregate a compound value
  write:
    name: Write queries to insert, update or delete data in a single table
    description: This standard deals specifically with writes to the database, using INSERT, UPDATE, or DELETE operations.
    objectives:
      0: Insert a single row of data using the INSERT command
      1: Insert multiple rows of data using the INSERT command
      2: Populate a table with the INSERT INTO command
      3: Update 1 or more columns of data with the UPDATE command
      4: Use a WHERE clause with the UPDATE command to conditionally update rows of data
      5: Delete data with the DELETE command
      6: Use a WHERE clause with the DELETE command to conditionally delete rows of data

next:
  - sql:dml
