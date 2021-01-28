---
author: catalin
type: normal
category: best-practice
tags:
  - workout
  - deep
  - obscura
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Avoid Command Injection


---

## Content

Avoiding command injection is highly recommended when the **security** factor of your Node application is taken into consideration.

Take the following example:

```javascript
child_process.exec('ls', function(err,data){
  console.log(data);
});
```

The problem is that `child_process.exec` makes a call to execute `/bin/sh`, meaning that it is a *bash interpreter* and not a program launcher.

When the user input is passed to the method - can be either *a backtick*  or `$()`, hence a new command can be injected by the attacker.

The simple way to avoid this threat is by using `child_process.execFile` or `child_process.spawn`.


---

## Practice

Which method is considered to be safer to use in the following case to retrieve a list of files chosen by a user?

```javascript
var path = "user input";
child_process.???('ls', ['-l'
, path], function (err, data) {
    console.log(data);
});
```

- spawn
- execFiles
- exec


---

## Revision

Which of the following is not true about `child_process.exec`?

???

- is literally the same as child_process.spawn
- calls to execute /bin/sh
- it's a bash interpreter
- its calls can be targeted for command injection
