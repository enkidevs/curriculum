---
author: tommarshall

levels:

  - advanced

  - medium

type: normal

category: tip

links:

  - >-
    [github.com](https://github.com/gulpjs/gulp/blob/master/docs/recipes/pass-arguments-from-cli.md){website}

  - '[npmjs.com](https://www.npmjs.com/package/yargs){website}'

---
# Passing arguments from the command line

---
## Content

The package `yargs` makes it easy to use command line arguments in your *gulp* scripts by providing a hash of command argument values.

The example below assigns the *destination* argument to the variable *dest* and defaults it to *dist* if the argument is not provided:

```javaScript
var gulp = require('gulp');
var args = require('yargs').argv;

var dest = args.destination ? 
           args.destination : 'dist';

gulp.task('show-arg',function(){
    console.log(dest);
});
```

Calling the gulp task:
```
gulp show-arg --destination "other"
```

---
## Practice

Require in the `yargs` package to make easy use of command line arguments:

```
var args = require('???').???;
```

* yargs 
* argv
* args
* argc
* mod-yargs
* package-yargs