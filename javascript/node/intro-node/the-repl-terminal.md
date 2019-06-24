---
author: tommarshall

levels:
  - beginner

type: normal

category: must-know

standards:
  javascript.node-developer-environment.5: 10

tags:
  - introduction

links:
  - '[tutorialsteacher.com](http://www.tutorialsteacher.com/nodejs/nodejs-console-repl){website}'

parent: installing-node-js

aspects:
  - introduction


---
# The REPL Terminal

---
## Content

REPL stands for Read Eval Print Loop. It represents an environment similar to a Windows console or Linux shell, where commands can be entered and the system would respond with the appropriate output.

*Read* takes an input and parses this into a JavaScript-recognizable expression before storing it into memory.
*Eval* evaluates this expression.
*Print* prints the result of the evaluation.
*Loop* loops the above commands until the user exits the REPL terminal.

A key benefit of using Node's REPL terminal is that it helps iron out any irregularities found in an application, meaning that there are no side effects when the code is ran in the application.

The REPL terminal can be used for simple expressions as follows:
```bash
$ node
> 4 + 2 * 9 - 6
16
```

Variables can also be used in the terminal, if the `var` keyword is used then the value is stored but not printed, whereas if the *var* keyword isn’t used the value is both stored and printed.

```bash
> x = 5
5
> var y = 7
undefined
> x * y
35
```

---
## Practice

What does the following print?
```bash
$ node
> 3 + 7 * 3 - 4
```
???


* 20
* command not found: 3
* 26
* -10

---
## Revision

What does REPL stand for?
???

* Read, Eval, Print, Loop
* Read, Equal, Process, Loop
* Reiterate, Else, Print, Loop

 
