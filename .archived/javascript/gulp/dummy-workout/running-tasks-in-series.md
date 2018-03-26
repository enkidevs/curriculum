---
author: tommarshall

levels:

  - advanced

  - medium

type: normal

category: must-know

parent: writing-gulp-tasks

links:

  - '[github.com](https://github.com/OverZealous/run-sequence){website}'

---
# Running tasks in series

---
## Content

*Gulp* normally runs all tasks at once without waiting. To create a *series* for your tasks to run in order you need to:
- Tell *gulp* when a task is done.
- Tell *gulp* when a task is dependent on another task's completion.

Requiring *gulp*:
```javaScript
var gulp = require('gulp');
```
Defining task *one*, it takes a *callback* `cb` as a parameter so the task runner knows when it's completed:
```javaScript
gulp.task('one', function (cb) {
    // do stuff
    fs.writeFile('filename', 'data', opts, 
       function (err) {
        // if err is not null then two 
        // will not run
        cb(err);
    });
});
```
Task *two* identifies that a dependent task must have been completed prior to it running:
```javaScript
gulp.task('two', ['one'], function() {
    // task 'one' has been completed
});
```
This task will only run once both *one* and *two* have completed. This could be written as only *two* having completed due to *two* depending on *one*.
```javaScript
gulp.task('default', ['one', 'two']);
```

---
## Practice

When will the following task run? ???

```javascript
gulp.task('default', ['Enki1', 'Enki2']);
```

* Once tasks Enki1 and Enki2 have both finished.
* Before either Enki1 or Enki2 have been ran.
* Once either Enki1 or Enki2 have been finished.

---
## Revision

Which of these tasks, run,  requires the task 'init' to have been completed before running? 

???

* gulp.task('run', ['init'], function() {
* gulp.task('init', 'run', function() {
* gulp.task(['init'],  'run', function() {
* gulp.task('run', function() {