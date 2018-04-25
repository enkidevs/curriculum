---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

links:

  - >-
    [github.com](https://github.com/gulpjs/gulp/blob/master/docs/recipes/automate-release-workflow.md){website}

  - '[sass-lang.com](http://sass-lang.com/){website}'

---
# Automating Workflow with Gulp

---
## Content

Gulp is a task-runner and makes it easy to automate common development tasks.

Here we use *Gulp* to compile *Sass* style sheets. *Sass* extends standard *CSS* functionality but *Sass* files must be compiled to produce a standard *CSS* output.

First if you have not already install *gulp* and the *gulp-sass* modules:
```
npm install gulp
npm install gulp-sass
```
Next create a file called *gulpfile.js* with the following code to import the *gulp* and *gulp-sass* modules:
```javaScript
var gulp = require('gulp');
var sass = require('gulp-sass');
```
We now need to tell the task runner where to look for the source *Sass* files and where to put the compiled output: 
```javaScript
gulp.task('sass', function () {
  return gulp
    // Find all `.scss` files in folder
    .src('./stylesheets/**/*.scss')
    // Run Sass plugin on found files
    .pipe(sass())
    // Pipe resulting CSS to destination
    .pipe(gulp.dest('./public/css'));
});
```
*Sass* files can now be compiled from the command line with the following:
```
gulp sass
```

---
## Practice

Complete the code snippet to tell the task runner where to look to find the source files, and where to put the compiled output:

```
gulp.task('sass', function () { 
  return gulp 
    .src('./stylesheets/**/*.scss') 
    .???(sass()) 
    .pipe(gulp.???('./public/css')); 
}); 
```
* pipe
* dest
* move
* pass
* destination
* src
* out