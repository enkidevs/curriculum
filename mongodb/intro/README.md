name: Introduction

description: Learn to use the NoSQL MongoDB database

core: true

sections:
  '0':
    - intro
    - databases
    - create-and-read-documents
    - update-and-delete-documents
  '1':
    - query-operators
    - aggregation-i
    - aggregation-ii
  '2':
    - crud
    - arithmetic-aggregation-i
    - arithmetic-aggregation-ii
    - aggregation-iii
    - querying-arrays
standards:
  shell:
    name: Use the MongoDB interactive JavaScript Shell
    description: This standard deals with ways to connect to a MongoDB shell and the shells commands
    objectives:
      0: Use the mongo command to start the shell
      1: Use either the quit() or exit command to leave the shell
      2: Use the help command to list command line options
  database:
    name: Create and modify a database
    description: This standard deals with creating, opening, deleting and modifying a database
    objectives:
      0: Use the use command to create a new database
      1: Use the use command to switch to an existing database
      2: Use the show command to list all created databases with at least one document
      3: Use the db command to display which database you're currently on
      4: Use the dropDatabase() method to delete an existing database
  crud:
    name: Use commands and methods to create, read, update and delete documents within a single collection
    description: This standard deals with creating, finding, updating and deleting data from a specific collection
    objectives:
      0: Use the insert() method to create a new document or documents within an existing or new collection
      1: Use the insertOne() method to add a single new document within an existing or new collection
      2: Use the insertMany() method to add multiple new documents within an existing or new collection
      3: Use the find() method to find a specific document located within a collection
      4: Use the find() and limit method to list an exact number of documents within a collection
      5: Use the update() method to modify or replace a single or multiple documents within a collection
      6: Use the updateOne() method to modify a single document within a collection
      7: Use the updateMany() method to modify multiple documents within a collection
      8: Use the replaceOne() method to replace a single document within a collection
      9: Use the deleteOne() method to delete a single document within a collection
      10: Use the deleteMany() method to delete a single, multiple or all documents within a collection
      11: Use the remove() method to remove a single, multiple or all documents within a collection
      12: Use the createCollection() method to create a new collection within the current database
      13: Use the show collection command to display all available collections within the current database
      14: Use the drop() method to delete a collection within the current database
      15: Use the find() and sort method to sort documents within a collection in a specified way
      16: Use the save() method to either replace an existing document or add a new document to a collection
      17: Use the renameCollection() method to rename a collection
      18: Use the findOneAndUpdate() method to find the first document matching the specified criteria and update its content
      19: Use the findOneAndReplace() method to find the first document matching the specified criteria and replace it with a newly specified one
      20: Use the findOneAndModify()method to find the first document matching the specified criteria and modify it
      21: Use projection to include or exclude fields from the output of the query
      22: Use the Remove() method to delete the first document matching the specified criteria
      23: Use the findOneAndDelete() method to delete the first document matching the specified criteria
  aggregation-pipeline:
    name: Use a variety of aggregation operations to process data and return the result in a single document
    description: Use aggregation operations to process data in variety of ways to return a specific result
    objectives:
      0: Use the aggregate() method to look through multiple documents and return a computed result
      1: Use the $limit aggregation stage to limit the amount of documents to return
      2: Use the $count aggregation stage to count the number of documents within a collection
      3: Use the $sort aggregation stage to sort documents in a specific order
      4: Use the $skip aggregation stage to skip a specific number of documents starting from the first one
      5: Use the $match aggregation stage to match documents in a specified way
      6: Use the $group aggregation stage to group documents together
      7: Use the $project aggregation stage to include or exclude documents from the aggregation pipeline
      8: Use accumulators related to the $group stage to group documents and perform different calculations
      9: Use the $sortByCount aggregation stage to group and sort documents by a specified expression
  update-operators:
    name: Use field update operators to update documents in various ways
    description: This standard deals with learning to use various update operators to update documents
    objectives:
        0: Use the $set operator to set a new value for a specified field
        1: Use the $inc operator to either increment or decrement the value of a specified field
  comparison-operators:
    name: Use different comparison operators to perform better queries
    description: This standard deals with learning how to use various comparison operators to more efficiently perform queries
    objectives:
        0: Use $gt to match values that are greater than the specified value.
        1: Use $gte to match values that are greater than or equal to the specified value.
        2: Use $lt to match values that are less than the specified value.
        3: Use $lte to match values that are less than or equal to the specified value.
        4: Use $in to match any value specified in an array.
        5: Use $ne to match values that are not equal to a specified value.
        6: Use $eq to match values that are equal to a specified value.
        7: Use $nin to match none of the values specified in an array.
  logical-operators:
    name: Use different logical operators to perform better queries
    description:  This standard deals with learning how to use different logical operators to more efficiently perform queries
    objectives:
        0: Use the $and operator to join 2 or more clauses together with a logical AND, and return all documents that match all of the specified expressions
        1: Use the $or operator to join 2 or more clauses together with a logical OR, and return all documents that match at least one of the specified expressions
        2: Use the $nor operator to join 2 or more clauses together with a logical NOR,  and return only documents that don't match all of the specified expressions
        3: Use the $not operator to invert the effect of the query.


