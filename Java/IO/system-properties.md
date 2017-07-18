# System Properties
author: nickdaminov

levels:

  - medium

type: normal

category: must-know

links:

  - '[More on System Properties](https://docs.oracle.com/javase/tutorial/essential/environment/sysprop.html)'

---
## Content

Depending on the system you are working on such as *Unix* or *Windows*, its' settings can be different and must be taken into account as the same code may not work on a different machines. There are a lot of useful properties which *Java* provides us with its' APIs. A lot of them are related to files and directories.

Such can be:
* `file.separator` - returns character that separates components of a file path
* `user.home` - returns user home directory
* `user.dir` - returns user working directory
* `path.separator` - returns path separator character used in `java.class.path`

There are a lot more properties which are worth knowing about. The link is provided in the *Learn More* section.

**NOTE:** sometimes accessing these properties can be restricted due to the security manager of the system.

---
## Practice

What does `user.home`return?

???

What does `path.separator` return?

???

What does `file.separator`return?

???

What does `user.dir` return?

???

* returns user home directory
* path separator character
* character that separates components of a file path
* user working directory


---
## Revision

Why is it important to consider different system properties when working with file systems?
???

* Different operating systems have their own unique properties which if mixed up will ruin the program
* System properties are changing through out the execution process so it is important to stay up to date to ensure the correctness of the program
