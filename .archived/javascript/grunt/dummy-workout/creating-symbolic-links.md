---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

links:

  - '[github.com](https://github.com/gruntjs/grunt-contrib-symlink){website}'

---
# Creating Symbolic Links

---
## Content

A *symbolic link* is a reference to a file or directory, creating *symbolic links* can be useful especially when distributing file duplicates and keeping these files up to date.

Creating a *symbolic link* to *`web/img/logo.png`* inside the *`enki/img`* directory:

First, install the plugin:
```bash
npm install --save grunt-contrib-symlink
```
Load it into the configuration, and create the *symlink* task:
```javaScript
module.exports = function (grunt) {
   grunt.initConfig({
     symlink: {
       sample: {
          files: {
              'enki/img/logo.png': 
                    'web/img/logo.png'
          }
       }
     }
   });
  grunt.loadNpmTasks('grunt-contrib-
                                symlink');
  grunt.registerTask('default', 'symlink');
};
```
Once ran, there would be a *symbolic link* called *`logo.png`* inside the *`enki/img`* directory pointing to the *`web/img`*.

---
## Revision

Load the plugin used to create symbolic links (references to files or directories):

```javascript
grunt.???('???');
```

* loadNpmTasks
* grunt-contrib-symlink
* loadTasks
* symbolic-link
* symlink
* load
 
 
