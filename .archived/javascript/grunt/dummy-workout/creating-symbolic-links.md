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

A _symbolic link_ is a reference to a file or directory, creating _symbolic links_ can be useful especially when distributing file duplicates and keeping these files up to date.

Creating a _symbolic link_ to _`web/img/logo.png`_ inside the _`enki/img`_ directory:

First, install the plugin:

```bash
$ npm install --save grunt-contrib-symlink
```

Load it into the configuration, and create the _symlink_ task:

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

Once ran, there would be a _symbolic link_ called _`logo.png`_ inside the _`enki/img`_ directory pointing to the _`web/img`_.

---

## Revision

Load the plugin used to create symbolic links (references to files or directories):

```javascript
grunt.???('???');
```

- loadNpmTasks
- grunt-contrib-symlink
- loadTasks
- symbolic-link
- symlink
- load
