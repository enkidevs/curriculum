---
author: rosielowther

levels:

  - basic

type: normal

category: must-know

aspects:
  
  - introduction
  - obscura
  

links:

  - '[Git Hooks Official Documentation](http://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks){website}'


---

# What is a hook?

---
## Content

A hook is a custom script that automatically fires when certain actions occur.

Actions such as committing and merging fire client-side hooks. Network operations fire server-side hooks.

You can write a hook in bash, perl, ruby, python or any other scripting language.

If you run `git init` git will add examples to the hooks directory `.git/hooks`.

For example, the hook called `post-commit` is useful for sending an email notification when there has been a new commit.

---
## Revision

A hook is a custom ??? that fires when a certain ??? occurs.

* script
* action
* error

 
