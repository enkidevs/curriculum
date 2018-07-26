name: Core

description: The fundamental backbone of knowledge. For life. Well, for Javascript.

core: true

sections:
  '0':
    - intro-js
    - types
    - flow-control
    - functions-i
    - js-history
    - arrays
    - objects
  '1':
    - types-ii
    - strings-ii
    - numbers
    - array-methods
    - functions-ii
    - scope
    - errors
  '2':
    - functions-iii
    - recipes-i
    - in-depth-ii
    - recipes-ii
  '3':
    - async
    - async-tips

standards:
  javascript-syntax:
    name: Identify JavaScript Syntax
    description: This standard has to do with identifying and evaluating the results of JavaScript Syntax.
    objectives:
      0: Identify JavaScript control structures
      1: Identify JavaScript statements
      2: Evaluate the validity of JavaScript syntax
  data-types-structures:
    name: Identify and use JavaScript's data types and structures and their respective operations
    description: This standard specifically relates to the operations performed on different data types.
    objectives:
      0: Identify primitive types in JavaScript
      1: Use primitive operators to operate on primitive types
      2: Identify data structures in JavaScript
      3: Use built-in data structures in JavaScript
      4: Perform primitive operations on data structures in JavaScript
      5: Access deeply nested data structures
      6: Functionally iterate over a data structure
  write-expressions:
    name: Write Javascript Expressions
    description: This standard deals with the composition of expressions in JavaScript using any kind of data type, as well as the composition of complex expressions with multiple sub-expressions.
    objectives:
      0:  Write simple expressions in JavaScript using each data type
      1: Compose simple expressions into complex expressions
      2: Decompose complex expressions into simple expressions
  evaluate-expressions:
    name: Evaluate JavaScript Expressions
    description: This standard covers reading JavaScript expressions and accurately predicting the result.
    objectives:
      0: Accurately predict the return value of simple numeric JavaScript expressions
      1: Accurately predict the return value of complex numeric JavaScript expressions
      2: Accurately predict the return value of simple string JavaScript expressions
      3: Accurately predict the return value of complex string JavaScript expressions
      4: Accurately predict the return value of simple boolean JavaScript expressions
      5: Accurately predict the return value of complex boolean JavaScript expressions
      6: Accurately predict the result of simple JavaScript expressions operating on a data structure
      7: Accurately predict the result of complex JavaScript expressions operating on a data structure
      8: Accurately predict the result of complex data structure access operations
      9: Accurately predict the return value of function or constructor
      10: Accurately predict the type of a given expression
  control-flow:
    name: Use control flow structures to control the flow of a program in JavaScript
    description: |
      This standard deals with any use of a control flow structure used to control the flow of a program in order to execute the correct statements in the correct logical sequence in JavaScript.

      Creating and calling functions is contained within this standard only in the sense that it must be demonstrated that one can use a function to logically order statements or conditionally execute them. The functions can be created by any method, be declared anywhere, and can be called in any fashion. Creating methods on an object and using them, or calling the map function with an arrow function that the user defines work equally well for this purpose.

      try..catch blocks is contained within this standard only in the sense that it deals with control flow from an exceptions perspective.
    objectives:
      0:  Make a decision about which control flow structure to use in order to execute statements in the correct logical sequence
      1: Demonstrate the use of if statements
      2: Demonstrate the use of switch statements
      3: Demonstrate the use of for, for of, for in loops
      4: Demonstrate the use of while loops
      5: Demonstrate the use of creating and calling functions
      6: Demonstrate the use of using a try..catch block to handle exceptions programmatically
  functions:
    name: Use functions in JavaScript
    description: This standard covers the declaration of functions in JavaScript, proper use of variable scope, return values, and calling functions.
    objectives:
      0: Write a function
      1: Write a parameterized function
      2: Write a parameterized function with defaults
      3: Write a named function
      4: Write an anonymous function
      5: Recognize the rules of variable scope with respect to functions
      6: Use variable scope to effectively encapsulate code by function
      7: Use variable scope to effectively constrain the memory use of a parameterized function
      8: Distinguish between function expressions and named functions
  standard-library:
    name: Use the standard library to perform common operations on data with JavaScript
    description: This standard covers common operations on data that are provided by the standard library of most JavaScript environments.
    objectives:
      0: Perform common string manipulation tasks
      1: Perform math operations, use the Math built-in library
      2: Accurately perform type-casting operations
      3: Use Console methods to output data
      4: Perform collection manipulation with Array methods (map, filter, reduce, etc)
      5: Perform Date manipulation operations, use the Date built-in library
  async:
    name: Perform and manage asynchronous operations in JavaScript
    description: This standard specifically deals with writing code to perform asynchronous operations. Any time code awaits some asynchronous event before being run. It does not deal with reasoning about asynchronous operations, except insofar as one must reason about the JavaScript-specific implementation details and considerations.
    objectives:
      0: Use callbacks to asynchronously execute code
      1: Explain the event loop in JavaScript
      2: Use Promises to perform sequential asynchronous operations
      3: Use async and await to create asynchronously resolving generator functions
  execution-context:
    name: Use and manipulate the execution context of a function in JavaScript
    description: This standard deals with the use of the call, apply, and bind methods, as well as manipulation of the this object, as well as knowledge of what the this value will be given a line in a snippet of code.
    objectives:
      0: Use bind to produce a bound function
      1: Use call and apply to call a function with an explicit this value
      2: Use this to store properties on an execution context
      3: Use this to modify an instance's properties
      4: Identify what the value of this is given a line in a code snippet
  prototype-class:
    name: Use prototypes to create class-like objects in JavaScript
    description: This standard covers using the prototype of a constructor function to create a class-like object, from which instances can be produced that share common methods and properties, but not common property values.
    objectives:
      0: Use a constructor function and the execution context of that function to produce an instance with particular properties
      1: Use the prototype of the constructor function to set methods on instances produced by the constructor function
      2: Modify the instance using a prototype method
  prototype-inherit:
    name: Use prototypes to inherit attributes from another object in JavaScript
    description: This standard covers using the prototype of a constructor function to create a class-like object, and inheriting methods and properties from another object higher in the prototype chain, from which instances can be produced that share common methods and properties, but not common property values.
    objectives:
      0: Set the prototype of a constructor function to inherit methods from another object
      1: Modify an instance using an inherited prototype's method
  exceptions:
    name: Identify and handle exceptions in JavaScript
    description: This standard deals with exception handling in JavaScript, as well as the identification of different errors that JavaScript displays.
    objectives:
      0: Distinguish JavaScript error types
      1: Identify the type of exception thrown from a JavaScript stack trace
      2: Use a try..catch block to handle an exception
      3: Create and throw a custom error type
      4: Use the debugger statement with a JavaScript debugger

next:
  - javascript:ecmascript-2015
