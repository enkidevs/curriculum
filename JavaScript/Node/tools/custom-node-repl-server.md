# Custom Node REPL Server
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

links:

  - '[nodejs.org](https://nodejs.org/api/repl.html){website}'

---
## Content

**Node** allows users to created their own *Read-Eval-Print-Loop*s (**REPL**).
Basic usage:
```javascript
repl.start(prompt, stream);

```
`prompt` is a string that's used for the prompt of your **REPL** and defaults to `">"`

`stream` is the stream that the **REPL** listens on and defaults to `process.stdin`


**REPL** exposed with `net` module - available with `telnet` :
```javascript
var net = require("net"),
    repl = require("repl");

net.createServer(function (socket) {
  var replServer = repl.start("remote> ",
socket);  
}).listen(5001);
```
Listen to `exit` event:
```javascript
replServer.on('exit', function () {
  console.log('Got "exit" event !');
  process.exit();
});
```
Custom commands can also be defined:
```javascript
replServer.defineCommand(keyword, cmd)
```

---
## Practice

Listen to exit event of a custom REPL:
```javascript
replServer.???(???, function() {
  process.exit()
});

```
*`on`
*`'exit'`
*`'close'`
*`'end'`

---
## Revision

Listen to exit event of a custom REPL:
```javascript
replServer.???(???, function() {
  process.exit()
});

```
*`on`
*`'exit'`
*`'close'`
*`'end'`
