---
author: rosielowther

levels:

  - advanced

  - medium

type: normal

category: feature

aspects:

  - introduction
  - workout
  
links:

  - '[Git Customizing Official Documentation](http://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration){website}'


---

# Custom commit template

---
## Content

You can add a commit message template to git, to help you write clear messages.

First, you create a template file `template.txt`:
```
subject line (50 chars)

issue no: X

commit body (72 chars)
```
Then you set this template to be the default commit editor message using `commit.template`:
```
$ git config --global 
  commit.template ~/.template.txt
```
When you run `git commit` the template will appear in the editor.

---
## Practice

You can add a commit message template using:
```
$ git ??? --global
  ???.???  ~/.template.txt
```

* `config`
* `commit`
* `template`
* `-co`
* `-m`

---
## Revision

You can add a commit message template using:
```
$ git ??? --global
  ???.???  ~/.template.txt
```

* `config`
* `commit`
* `template`
* `-co`
* `-m`

 
