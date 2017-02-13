# Manage child processes in **Node**
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

links:

  - '[www.graemeboy.com](http://www.graemeboy.com/node-child-processes){website}'

  - >-
    [krasimirtsonev.com](http://krasimirtsonev.com/blog/article/Nodejs-managing-child-processes-starting-stopping-exec-spawn){website}

---
## Content

**Node** has the ability to externalize *CPU-intensive* processing in order to free the event loop by *spawning* child processes that can communicate seamlessly with their parents.

The `child_process` module is required for any operation of this sort:
```javascript
var child = require('child_process');
```

The `exec(command,callback)` can be used to to run **UNIX** commands:
```javascript
child.exec('ls',function
(err,stdout,stderr){
    if (err) { err.code);}
    console.log(stdout);
});
```
This method does not provide any mean of communicating with the parent and gives a buffered output. The `spawn()` method is an improved version of the first:
```javascript
var spawn = require('child_process').spawn;
// Create a child process
var child = spawn('tail',
    ['-f', '/var/log/system.log']);
// "tail" command is run in the argument
```
Listeners to `stdout` and `stderr` streams can be added:
```javascript
child.stdout.on('data',
    function (data) {
        console.log(data);});
```

---
## Practice

Complete the JS code snippet to create a child process:

```javascript
var spawn =
  require('???').???;
```

* `child_process`
* `spawn`
* `create-child`
* `create`
* `new`
* `new-process`

---
## Revision

What module is required to spawn child processes?
???

*`child_process`
*`child_processes`
*`spawn_process`
*`child-cpu`
