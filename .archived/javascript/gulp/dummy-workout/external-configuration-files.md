---
author: tommarshall

levels:

  - advanced

  - medium

type: normal

category: tip

links:

  - >-
    [github.com](https://github.com/gulpjs/gulp/blob/master/docs/recipes/using-external-config-file.md){website}

---
# External Configuration Files

---
## Content

It is easy to configure *Gulp* to use an external configuration file. 

This is a great way to keep settings organised, versioned, accessible by other build tools and distinct from the build process.

Create a file called *config.json* to hold the settings:
```
{
   "destination" : "wwwroot\\"
}
```

Then in *gulpfile.js* import *config.json* as you would any other module:

```
var gulp   = require('gulp');
var config = require('./config.json');
```

We can now access properties on the config object easily and use them in Gulp tasks:
```
gulp.task('get-destination', function() {
   console.log(config.destination);
});
```