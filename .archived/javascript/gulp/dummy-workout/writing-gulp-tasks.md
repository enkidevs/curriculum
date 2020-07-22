---
author: tommarshall

levels:

  - basic

  - beginner

type: normal

category: tip

links:

  - >-
    [scotch.io](https://scotch.io/tutorials/automate-your-tasks-easily-with-gulp-js){website}

---
# Writing Gulp Tasks

---
## Content

The first step when using *gulp* is to require gulp in the *Gulpfile*. The require statement tells Node to look in the *`node_modules`* folder for a package named *gulp*.
```javaScript
var gulp = require('gulp');
```
The `gulp` variable is used to create a *gulp* task:
```javaScript
gulp.task('task name goes here', 
           function() {
  // task code goes here...
});
```
For example:
```javaScript
gulp.task('enki_task', function() {
  console.log('Enki does gulp!');
});
```
The above code is ran on the command line by:
```bash
gulp enki_task
```
Outputs to the console:
```bash
Enki does gulp!
```

---
## Practice

Create a simple task for the name `enki`:
```javascript
???.???('enki`, 
        function() {
});
```

* gulp
* task
* console
* log
* grunt
* tasks

---
## Revision

Create a simple task for the name `enki`:
```javascript
???.???('enki`, 
        function() {
});
```

* gulp
* task
* console
* log
* grunt
* tasks
 
 
