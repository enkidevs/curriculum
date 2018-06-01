---
author: tommarshall

levels:

  - basic

  - medium

  - beginner

type: normal

category: best practice

links:

  - '[grunt-tasks.com](http://grunt-tasks.com/grunt-newer/){website}'

---
# Only Processing Changed Files

---
## Content

For efficiency, when running a task which includes file processing, the task only needs to process *modified files* each time it runs, rather than processing every file every time.

 This is especially true when there is a large number of files to be processed.
```javaScript
watch: {
     jshint: {
        files: ['src/**/*.js'],         
        tasks: ['newer:jshint']
     }
}
```
If a file was changed and saved in the *`src`* folder then this modification would be observed, and this would have been processed by the the *`jshint`* task.

---
## Revision

For ???, when running a task which incorporates file processing, tasks only need to process ??? each time they run.

* efficiency
* modified files
* reliability
* integrity of data
* deleted files
* big tasks