name: ECMAscript

description: The ever-evolving specification that governs the unified syntax of the JavaScript Ecosystem. Learn how to use new syntax and understand how to deal with the many, many versions of ECMAScript you'll need to support as a JavaScript Developer.

sections:
  '0':
    - intro-ecmascript
    - function-improvements
    - number-extensions
    - array-updates
  '1':
    - destructuring
    - string-upgrades
    - spread-map-set-math
    - string-flexibility
  '2':
    - classes-modules
    - promises
    - async-tips
    - symbol
  '3':
    - iterators-generators
    - generators-proxy

standards:
  new-declaration-keywords:
    name: Use new variable declaration keywords to communicate more effectively with other developers
    description: This standard deals with knowledge of the behavior of let and const and their proper use.
    objectives:
      0: Use let for block-scoped variables
      1: Use const for variables that will not change
  es6-extensions-standard-library:
    name: Use extensions to JavaScript’s standard library to perform data analysis and manipulation
    description: This standard covers improvements to existing data structures and other standard library utilities that were introduced in ECMAScript 2015.
    objectives:
      0: Use new Object static methods
      1: Use new Array static and prototype methods
      2: Use new String static and prototype methods and properties
      3: Use new Number static and prototype methods and properties
      4: Use new Math methods
      5: Use new RegExp syntax extensions
  es6-functions:
    name: Use updates to functions to create more expressive functions
    description: This standard covers the updates to the function syntax to support more functional programming capabilities in JavaScript.
    objectives:
      0: Use Arrow Functions
      1: Use Generator Functions
      2: Use parameter defaults
      3: Use the rest operator ... to capture additional parameters
  es6-data-structures:
    name: Use new data structures and their features to store data
    description: This standard deals with new built-in data structures in JavaScript and their use to effectively store data.
    objectives:
      0: Use Set and it's methods to effectively store and retrieve data
      1: Use Map and it's methods to effectively store and retrieve data
      2: Use WeakSet and it's methods to effectively store and retrieve data
      3: Use WeakMap and it's methods to effectively store and retrieve data
      4: Use Typed Arrays and their methods to effectively store and retrieve data
      5: Use DataViews and their methods to effectively store and retrieve data
      6: Use Symbol and it's methods to effectively store and retrieve data
      7: Use the spread operator (...) to spread a collection
  destructuring:
    name: Use destructuring syntax to operate on data in collection
    description: This standard deals with all forms of destructuring syntax, introduced in ES6.
    objectives:
      0: Use destructuring syntax with arrays
      1: Use destructuring syntax with objects
      2: Use destructuring syntax to assign default values in objects
      3: Use destructuring syntax with strings
      4: Use destructuring syntax with computed property names
      5: Use destructuring syntax to unpack field names from objects passed as a function parameter
      6: Use destructuring syntax to iterate over collections
  es6-class:
    name: Use prototypes to create class-like objects in JavaScript
    description: This standard covers using the class and extends keywords, and constructor function with super.
    objectives:
      0: Use the class keyword to declare a class, using the constructor function
      1: Use the extends keyword to inherit from another class, and use super in the constructor function
  native-promises:
    name: Use native Promises to manage asynchronous operations
    description: This standard deals with the use of native promises, and their methods. It does not cover the use of Bluebird, or any other promise library.
    objectives:
      0: Use the Promise constructor to create a new promise
      1: Use .then to await promise resolution
      2: Use .catch to catch errors
      3: Use .all to await multiple promises
      4: Use .resolve to resolve a promise
      5: Use .reject to reject a promise
      6: Use .race to race promises
  async-await:
    name: Use async await to manage asynchronous operations
    description: This standard deals with async and await keywords and their use to manage asynchronous operations.
    objectives:
      0: Write an async function that performs an asynchronous task
      1: Use the await keyword to pause execution in an async function until a promise resolves
  iterators-generators:
    name: Use iterators and generators to process collections
    description: This standard deals with the iteration protocol in JavaScript as defined in ES6, and generators, and their use to process a collection or respond dynamically to evented input.
    objectives:
      0: Use for..of loops to iterate over a collection by value
      1: Use generator functions to yield a sequence
      2: Use a generator to invert control
      3: Use a generator to manage asynchronous activity by suspending execution until after a promise has resolved
  es6-proxies:
    name: Use Proxies to define custom behavior for fundamental operations in JavaScript
    description: This standard deals with the use of Proxies and Reflect to handle property lookup and assignment, enumeration, and function invocation.
    objectives:
      0: Use a Proxy to handle property lookup and assignment
      1: Use a Proxy to handle function invocation
      2: Use Reflect to use the internal default behavior of proxy methods
  es6-modules:
    name: Use native ES6 Modules to import code
    description: Use the native ES6 `import` syntax to import a module, as distinct from the CommonJS `require()`
    objectives:
      0: Import a module
      1: Import named components of a module
      2: Export a module
      3: Export multiple named components of a module

next:
  - javascript:browser-apis
