name: NodeJS

description: Node.js is a JavaScript runtime that uses an event-driven, non-blocking I/O model and features built-in OS APIs to let you use JavaScript to write any kind of program. 

sections:
  '0':
    - intro-node
    - file-io
    - events
    - web-servers
    - modules
    - streams
  '1':
    - error-handling
    - operational-vs-programmer-errors
    - code-style-recommendations
    - express
    - express-ii
    - node-best-practices
    - node-patterns
    - node-tools
    - quirks
    - processes-clustering

standards:
  node-developer-environment:
    name: Set up and use a Node developer environment
    description: This standard deals with the ability to set up and install required components of the Node.js Ecosystem
    objectives:
      0: Install Node.js on your system
      1: Manage versions of Node.js with a version manager
      2: Install a package manager for Node.js
      3: Install a debugger for Node.js
      4: Install build tools for Node.js
      5: Use the node interpreter to execute JavaScript
  events-asynchronous-operations:
    name: Use events to manage asynchronous operations
    description: This standard handles usage of Node's Events API to manage asynchronous operations.
    objectives:
      0: Create an EventEmitter
      1: Listen for events on an EventEmitter
      2: Emit events on an EventEmitter
      3: Emit events in response to input to the process
  use-modules:
    name: Use modules to add functionality to your code
    description: This standard deals with importing and exporting modules and using modules.
    objectives:
      0: Create a module from a single file with exported functions to reuse code
      1: Import a module into another file from somewhere else in your project
      2: Import a module from the npm registry
      3: Import a module from git
  read-and-write-streams:
    name: Read and Write Streams
    description: This standard deals with streams in Node.js.
    objectives:
      0: Use pipe to read from a streaming interface
      1: Use write to write to a stream
      2: Use pause and resume effectively to pause and resume streams
      3: Use stream events to robustly handle a stream's states
  identify-common-design-patterns:
    name: Identify and use common design patterns
    description: This standard deals with the identification of common design patterns in Node.js.
    objectives:
      0: Identify and use the factory module design pattern
      1: Identify and use the middleware pipeline design pattern
      2: Use conventional property names for common objects
      3: Use industry conventions to handle synchronous exceptions
      4: Use industry conventions to handle type errors
      5: Use industry conventions to catch asynchronous errors
      6: Identify and use the revealing module pattern
      7: Use a linter with JavaScript
      8: Distinguish between operational and programmer error
  node-standard-library-os:
    name: Use the standard library to interact with your operating system
    description: This standard deals with the standard node.js library that exposes operating system features as an API.
    objectives:
      0: Use the standard library to interact with the file system
      1: Use the standard library to issue network requests and listen for responses
      2: Use the standard library to listen for network requests and issue responses
      3: Use the standard library to interact with device ports
      4: Use the standard library to encrypt and decrypt data
      5: Use the standard library to manage child processes
      6: Use the standard library to monitor the running process
  express-server:
    name: Use express to create a web server
    description: This standard handles usage of Node's Events API to manage asynchronous operations.
    objectives:
      0: Create an express app, bound to a port
      1: Use an express app to respond to HTTP requests
      2: Use the express Router to organize route handlers
      3: Use the express Router & Request object to receive parameters from the URL
      4: Use middleware with express to parse requests or preprocess responses
      5: Use parameters from the Request in a route handler
      6: Use middleware to log incoming requests and outgoing responses
      7: Use the Response object API to send a properly formatted HTTP response (status code, headers, etc)
      8: Use a server-side rendering package to render HTML containing data from the server
      9: Catch server and request errors and properly respond to the request with information about the error


next:
  - javascript:npm
