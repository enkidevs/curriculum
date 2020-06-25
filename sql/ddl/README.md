name: Data Definition Language

description: Create and modify SQL databases of your own

sections:
  '0':
    - create
    - data-types
    - alter
  '1':
    - indices
    - storing-blobs
    - storing-json

standards:
  create-database:
    name: Create a database
    description: This standard covers the skill of creating a database.
    objectives:
      0: Create a database
      1: Create database users
      2: Provision roles for database users
  define-tables:
    name: Write statements to create tables
    description: This standard covers the skill of creating tables.
    objectives:
      0: Create a new table
      1: Set the data type or name of columns in a new table
      2: Write statements to add a Trigger to a table
      3: Write statements to add a Rule to a table
      4: Write statements to add Primary or Foreign Keys to a new table
  define-columns:
    name: Write statements to create or modify columns
    description: This standard covers operations specific to columns in tables in an RDBMS.
    objectives:
      0: Create columns in a table
      1: Modify the name or data type of columns in a table
      2: Modify other properties of a column in a table
  define-relationships:
    name: Write statements to create or modify relationships
    description: This standard covers the definition of relationships between two tables in an RDBMS.
    objectives:
      0: Create a one-to-many relationship by creating a reference to a foreign key
      1: Create a many-to-many relationship with two foreign key references
      2: Create a one-to-one relationship by creating a reference to a foreign key and setting a constraint
      3: Join a table to itself with self-referencing foreign keys
  define-indices:
    name: Write statements to create or modify indices
    description: This standard deals with creation of indices on a database table
    objectives:
      0: Create an index on a database table
      1: Modify the properties of an index on a database table
      2: Create a clustered index on a database table
      3: Distinguish between effective indices that improve the performance of table lookups and ineffective indices that hinder performance
  define-sequences-or-default-values:
    name: Write statements to create or modify sequences or default values
    description: This standard has to do with columns with computed values, sequences, auto-incrementing values, GUIDs, defaults, etc. Any type of data-altering computation that is defined by the column.
    objectives:
      0: Write column definitions to create auto-incrementing IDs
      1: Write column definitions with default values that are static
      2: Write column definitions with default values that are computed
  choose-sql-datatype:
    name: Choose the correct SQL datatype to store a type of data
    description: This standard covers the skill of choosing a data type for a column of data in a table based on the desired behavior of the column.
    objectives:
      0: Distinguish and choose between numeric types based on the desired behavior of the column
      1: Distinguish and choose between string types based on the desired behavior of the column
      2: Distinguish and choose between large content types based on the desired behavior of the column
      
