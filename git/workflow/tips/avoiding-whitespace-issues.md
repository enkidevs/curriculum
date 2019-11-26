---
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

aspects:

  - workout
  - obscura


links:

  - '[Formatting And Whitespace Official Documentation](http://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration#_formatting_and_whitespace){website}'


---

# Avoiding whitespace issues

---
## Content

git automatically warns about spaces at the end of a line, blank lines at the end of a file and spaces before tabs at the beginning of a line. 

To get warnings about whitespace when you use `git diff`, add the following to your `.gitconfig` file:
```
[core]
      whitespace = warn
```
Alternatively, execute the command to do exactly the same:
```
$ git config --global 
             core.whitespace warn
```
Now git will highlight the whitespace issues so you can fix them.

---
## Practice

Configure git to warn you about whitespaces
```
$ git ??? ??? 
    ???.??? ???
```

* `config`
* `--global`
* `core`
* `whitespace`
* `warn`

---
## Revision

```
$ git config --global 
           core.whitespace warn
```
Would ??? .

* highlight the whitespace issues
* automatically fix whitespace issues

 
