---
author: catalin
type: normal
category: how to
tags:
  - workout
links:
  - '[nodejs.org](https://nodejs.org/api/repl.html){website}'
---

# Custom Node REPL Server


---

## Content

**Node** allows users to created their own *Read-Eval-Print-Loop*s (**REPL**).
Basic usage:

```plain-text
repl.start(prompt, stream);

```

`prompt` is a string that's used for the prompt of your **REPL** and defaults to `">"`

`stream` is the stream that the **REPL** listens on and defaults to `process.stdin`

**REPL** exposed with `net` module - available with `telnet` :

```plain-text
var net = require("net"),
    repl = require("repl");

net.createServer(function (socket) {
  var replServer = repl.start("remote> ",
socket);  
}).listen(5001);
```

Listen to `exit` event:

```plain-text
replServer.on('exit', function () {
  console.log('Got "exit" event !');
  process.exit();
});
```

Custom commands can also be defined:

```plain-text
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

- on
- 'exit'
- 'close'
- 'end'


---

## Revision

Listen to exit event of a custom REPL:

```javascript
replServer.???(???, function() {
  process.exit()
});

```

- on
- 'exit'
- 'close'
- 'end'
