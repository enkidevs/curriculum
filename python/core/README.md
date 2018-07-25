name: Core

description: The fundamentals of Python. No skin shedding needed.

core: true

sections:
  '0':
    - meet-python
    - console-and-operators
    - control-structures
    - fundamental-data-structures
    - fundamental-data-structures-ii
    - looping
    - functions
    - tips
  '1':
    - intro-to-modules
    - basic-file-manipulation
    - playing-with-time
    - working-with-strings
    - classes-i
    - classes-ii
    - utilities-i
    - is-your-python-healthy
    - testing
  '2':
    - math-recipes
    - string-recipes
    - more-on-lists
    - more-on-sets
    - more-on-dictionaries
    - recipes
    - deep-into-collections
    - advanced-queues
  '3':
    - classes-iii
    - bits-bytes-hexadecimals
    - memory-allocation
    - advanced-referencing
    - utilities-ii

standards:
  developer-environment:
    name: Set up a Python Developer Environment
    description: This standard deals with the installation of developer environments in python.
    objectives:
      0: Install and run Python 2
      1: Install and run Python 3
      2: Install and run a Python Notebook locally
      3: Install pip
      4: Install other python package managers
      5: Install and run other versions of python
      6: Install packages from a package manager
      7: Create and use virtual environments in folders with a local python installation
      8: Install the requirements of a program from a file using a package manager in a virtual environment
  identify-python-syntax:
    name: Identify Python Syntax
    description: This has to do with the skill of reading and understanding python.
    objectives:
      0: Identify Python control structures
      1: Identify Python statements
      2: Evaluate the validity of Python syntax
  native-types-operations:
    name: Identify and use native Types in Python and their respective primitive operations
    description: This deals mostly with section 4 of the python 3 library manual. Sequence types refers to all sequence types, including list, tuple, range, str, bytes, bytearray, memoryview
    objectives:
      0: Recognize and use boolean values and boolean operations
      1: Recognize and predict the result of a comparison operation between all built-in types
      2: Recognize and effectively use the numeric types and their respective operations
      3: Recognize and use built-in iterator types
      4: Recognize and use built-in sequence types and their respective operations
      5: Recognize and use set types and their respective operations
      6: Recognize and use mapping types and their respective operations
      7: Recognize and use context management types and their respective operations
      8: Recognize and use date types and their respective operations
      9: Recognize and use enumerators and their respective operations
      10: Recognize and use error types and their respective causes
      11: Recognize and use binary types and their respective operations
  control-structures:
    name: Use control structures to control the flow of a program in Python
    description: |
      This standard deals with use of a control flow structure used to control the flow of a program in order to execute the correct statements in the correct logical sequence in Python.

      Creating and calling functions is contained within this standard only in the sense that it must be demonstrated that one can use a function to logically order statements or conditionally execute them. The functions can be created by any method, be declared anywhere, and can be called in any fashion. Creating methods on an object and using them, or calling the map function with an arrow function that the user defines work equally well for this purpose.
    objectives:
      0: Make a decision about which control flow structure to use in order to execute statements in the correct logical sequence
      1: Demonstrate the use of if statements
      2: Demonstrate the use of for loops
      3: Demonstrate the use of while loops
      4: Demonstrate the use of creating and calling functions
      5: Demonstrate the use of deferred execution of a code block
  use-iteration-protocol:
    name: Use and extend the iteration protocol
    description: This standard has to do with the use of iterators, the iter function, and the iterator protocol in Python.
    objectives:
      0: Use for loops to iterate over an iterable
      1: Iterate over an iterable without a for loop
      2: Distinguish iterators from sequences
      3: Identify Python's native iterables
      4: Use the iter and next functions to create an iterable
  standard-library-data:
    name: Use Python’s standard library to perform common operations on data
    description: This mostly deals with section 5, 6, 7, 8, and 9 of the python3 standard library documentation.
    objectives:
      0: Use the standard library to generate random numbers
      1: Use the standard library to do complex mathematical calculations
      2: Use the standard library to do date math
      3: Use the standard library to do common operations on strings
      4: Use the standard library to interact with binary data
      5: Use the standard library to parse formatted strings into data
      6: Use the standard library to format strings
      7: Use the standard library to encrypt or decrypt data
      8: Use regular expressions to match or find complex regularized string expressions
  standard-library-operating-system:
    name: Use Python’s standard library to interact with the operating system
    description: This standard deals with standard library features that must coordinate directly with the operating system, due to interaction with the disk or network operations.
    objectives:
      0: Use the standard library to read and write to the file system
      1: Use the standard library to format data into different file formats
      2: Use the standard library to perform network requests
      3: Use the standard library to receive network requests
      4: Use the standard library to persist data to disk
      5: Use the standard library to interact with input and output streams
  functions:
    name: Use functions in Python
    description: This standard covers the declaration of functions in Python, proper use of variable scope, return values, and calling functions.
    objectives:
      0: Write a function
      1: Write a parameterized function
      2: Write a parameterized function with defaults
      3: Recognize the rules of variable scope with respect to functions
      4: Use variable scope to effectively encapsulate code by function
      5: Use variable scope to effectively constrain the memory use of a parameterized function
  object-oriented:
    name: Use the object-oriented features of Python
    description: This standard deals with the use of correct syntax and operation of the features of python designed to support object oriented programming.
    objectives:
      0: Create a class
      1: Subclass an existing class
      2: Define an instance method on a class
      3: Define a class method on a class
      4: Identify the special methods on the object type
      5: Emulate a type by implementing it's methods
      6: Distinguish classes from instances
  modules:
    name: Use Modules to structure your code
    description: This deals with the dependency system in python.
    objectives:
      0: Import a module
      1: Import namespaced modules
      2: Import code from other files
      3: Import code from a folder
      4: Import data
      5: Import standard library modules
      6: Import modules installed with a package manager
      7: Write import statements given the folder structure of a module
      8: Create a module
      9: Create a module with namespaced modules
  store-manipulate-data:
    name: Effectively store and manipulate data using Python standard data structures
    description: This standard deals with the ability to access and transform data effectively. It is intended to measure the use of python data structures.
    objectives:
      0: Access deeply nested data structures
      1: Store data in deeply nested data structures
      2: Transform arbitrarily formatted data into another format
      3: Format data for transport across a network
      4: Encode data in a standard data carrying format (json, xml, csv, etc)
      5: Load data into a data structure to support an algorithm's efficient execution
      6: Recognize the rules respective to references in data structures, and their effects on garbage collection
  data-structures-uses:
    name: Accurately describe a wide range of data structures and relevant uses
    description: This standard deals with the use of data structures in python. It intends to measure the proper choice of data structure, in terms of efficiency of access and suitability for the problem. It also intends to measure the accurate use of these data structures to solve problems, where accuracy is defined by using the most efficient and direct access operations and methods of the given data structure for the problem.
    objectives:
      0: Use Python's Iterator types to solve a problem requiring representation of a linear sequence
      1: Use Python's Mapping types to solve a problem requiring representation of a non-sequenced set or O(1) data structure access
      2: Use Python's Set types to solve a problem requiring unique sets of data
      3: Use a binary structure to hold binary data
      4: Use the standard library's functions for heapq to solve a problem requiring a priority queue
      5: Use Python's string type to solve a problem requiring the reformatting of data
  testing:
    name: Write Tests in Python
    description: This standard deals with the use of modules and standard library features to test Python code.
    objectives:
      0: Write an assertion
      1: Create a unit test
      2: Create an integration test
      3: Use standard library python testing tools
      4: Use open-source python testing tools
      5: Create a mock to isolate unit tests
      6: Create a spy to verify the behavior of a function

next:
  - python:functional-programming
